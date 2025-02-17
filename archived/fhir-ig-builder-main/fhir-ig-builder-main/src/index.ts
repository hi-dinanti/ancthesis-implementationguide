import * as fs from 'fs';
import excelToJson from 'convert-excel-to-json';
import { buildFormat } from './formatter';
import { MappingFormat } from './formatter/utils';
import path from 'path';

// function isObject(item: any) {
//     return (item && typeof item === 'object' && !Array.isArray(item));
// }

// function deepMerge(target: any, ...sources: any[]): any {
//     if (!sources.length) return target;
//     const source = sources.shift();

//     if (isObject(target) && isObject(source)) {
//         for (const key in source) {
//             if (isObject(source[key])) {
//                 if (!target[key]) Object.assign(target, { [key]: {} });
//                 deepMerge(target[key], source[key]);
//             } else {
//                 Object.assign(target, { [key]: source[key] });
//             }
//         }
//     }
//     return deepMerge(target, ...sources);
// }

// Fungsi untuk membaca file Excel dan mengubahnya menjadi array of objects berdasarkan nama sheet
function readExcelFile(filePath: string, sheetNames: string[]): { [key: string]: any[]} {
    const excel: { [key: string]: any[]} = {};

    const result = excelToJson({
        sourceFile: filePath,
        header: {
            rows: 1
        },
        columnToKey: {
            "*": "{{columnHeader}}"
        }
        // sheets: [sheetName]
    });

    sheetNames.forEach((sheetName) => {
        if (!result[sheetName]) {
            throw new Error(`Sheet dengan nama "${sheetName}" tidak ditemukan.`);
        }
        excel[sheetName] = result[sheetName].map((row: any) => {
            const formattedRow: any = {};
            Object.keys(row).forEach(key => {
                formattedRow[key] = row[key];
            });
            return formattedRow;
        });
    });

    return excel;
}

function mapExcelData(excelData: any[]): any[] {
    const result: Record<string, MappingFormat> = {};

    excelData.forEach((row: any) => {
        buildFormat(row as MappingFormat, result);
    });

    return Object.keys(result).map((key) => result[key]);
}

// Fungsi untuk menggantikan placeholder dalam template JSON dengan data dari Excel
function transformExample(template: any, rowData: any): any {
    // const jsonString = JSON.stringify(template);
    const jsonString = template as string;
    const transformedString = jsonString.replace(/\{\{([^\}]+)\}\}/g, (match, p1) => {
        return rowData[p1] !== undefined ? rowData[p1] : match;
    });
    const parse = JSON.parse(transformedString);

    const mapped: MappingFormat = rowData as MappingFormat;
    if (mapped.Array && mapped.Array.length > 0) {
        switch (mapped.Resource) {
            case 'Encounter':
                parse['reasonCode'] = mapped.Array;
                break;
            case 'Observation':
                parse['component'] = mapped.Array;
                break;
        }
    }
    
    return parse;
}

// Fungsi untuk menggantikan placeholder dalam template JSON dengan data dari Excel
function transformStructureDefinition(template: any, rowData: any): any {
    // const jsonString = JSON.stringify(template);
    const jsonString = template as string;
    const transformedString = jsonString.replace(/\{\{([^\}]+)\}\}/g, (match, p1) => {
        return rowData[p1] !== undefined ? rowData[p1] : match;
    });
    const parse = JSON.parse(transformedString);

    return parse;
}

// Fungsi utama
async function main() {
    const dirOut = 'outputs/Output-' + Math.floor(Math.random() * 1000);
    const resourceNames = ['Encounter', 'Condition', 'Observation'];
    const excelFilePath = 'test/data1.xlsx'; // Path ke file Excel
    // const templateFilePath = 'templates/Encounter/Kunjungan-Baru.json'; // Path ke template JSON
    // const outputFilePath = 'outputs/contoh1.json'; // Path untuk menyimpan output

    // Membaca file Excel
    const excel = readExcelFile(process.cwd() + '/' + excelFilePath, resourceNames);
    // console.log('Excel', excelData);

    if (!fs.existsSync(dirOut))
        fs.mkdirSync(dirOut);
    
    Object.keys(excel).forEach((key) => {
        const excelData = excel[key];
        const mappedData = mapExcelData(excelData);
        console.log('MappedData ' + key, mappedData);

        const cachedTemplates: Record<string, string> = {};
        const transformedData: any[] = [];
        mappedData.forEach((mapped: MappingFormat) => {
            if (!mapped.ExampleTemplate && !mapped.StructureDefinitionTemplate)
                return;

            if (mapped.ExampleTemplate && fs.existsSync(mapped.ExampleTemplate)) {
                if (!cachedTemplates[mapped.ExampleTemplate]) {
                    // Membaca template JSON
                    const strTemplate = fs.readFileSync(mapped.ExampleTemplate, 'utf8');
                    cachedTemplates[mapped.ExampleTemplate] = strTemplate;
                }

                // const template = JSON.parse(cachedTemplates[mapped.ExampleTemplate]);
                
                // Transformasi data
                // const transformedData = mappedData.map(row => transformExample(template, row));
                const transform = transformExample(cachedTemplates[mapped.ExampleTemplate], mapped);

                const outputFilePath = path.join(dirOut, 'Example-' + (mapped.Resource ? mapped.Resource + '-' : 'Resource-') + (mapped['Resource No'] ?? '1') + '.json');
                // Menyimpan output ke file JSON
                fs.writeFileSync(outputFilePath, JSON.stringify(transform, null, 2));

                transformedData.push(transform);
            }

            if (mapped.StructureDefinitionTemplate) {
                if (!cachedTemplates[mapped.StructureDefinitionTemplate]) {
                    // Membaca template JSON
                    const strTemplate = fs.readFileSync(mapped.StructureDefinitionTemplate, 'utf8');
                    cachedTemplates[mapped.StructureDefinitionTemplate] = strTemplate;
                }

                const transform = transformStructureDefinition(cachedTemplates[mapped.StructureDefinitionTemplate], mapped);

                const outputFilePath = path.join(dirOut, 'StructureDefinition-' + (mapped.Resource ? mapped.Resource + '-' : 'Resource-') + (mapped['Resource No'] ?? '1') + '.json');
                // Menyimpan output ke file JSON
                fs.writeFileSync(outputFilePath, JSON.stringify(transform, null, 2));
            }
        });

        console.log('Transformed Data ' + key, JSON.stringify(transformedData, null, 1));

        // console.log('Transformasi selesai. Data disimpan di:', outputFilePath);
        console.log('---------------');
    });
}

main();