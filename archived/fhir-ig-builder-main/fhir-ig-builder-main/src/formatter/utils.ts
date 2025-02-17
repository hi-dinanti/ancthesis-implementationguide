import path from "path";
import CATEGORY_LIST from '@server/config/json/category.json'

export interface MappingFormat {
    // Examples
    Resource?: string,
    Path?: string,
    Code?: string,
    Display?: string,
    CodeSystem?: string,
    Category?: string,
    CategorySystem?: string,
    CategoryCode?: string,
    ["Resource Template"]?: string,
    ["Resource No"]?: string | number,
    ["Value Name"]?: string,
    ExampleTemplate?: string,
    StructureDefinitionTemplate?: string,
    Array?: any[],

    // StructureDefinition
    ["Resource Package"]?: string,
    ["Resource Structure Definition"]?: string,
    ["Resource Full Name"]?: string,
    ["Resource Description"]?: string,
}

export interface MappingFormatObservation extends MappingFormat {
    Nilai?: string | number | boolean | any;
    NilaiDisplay?: string;
    NilaiSystem?: string;
    NilaiUnit?: string;

    DataAbsentReason?: any;
    Interpretation?: any;
    BodySite?: any;
    Method?: any;
}

export function buildFormatBaseResource(rawData: MappingFormat, result: Record<string | number, MappingFormat>, compoent?: any) {
    if (rawData["Resource No"] && rawData.Resource) {
        if (rawData["Resource Template"])
            rawData.ExampleTemplate = path.join('templates', 'Examples', rawData.Resource, rawData["Resource Template"] + ".json")

        if (rawData["Resource Structure Definition"])
            rawData.StructureDefinitionTemplate = path.join('templates', 'StructureDefinitions', rawData.Resource, rawData["Resource Structure Definition"] + ".json")

        if (!result[rawData["Resource No"]]) {
            result[rawData["Resource No"]] = rawData;
        }

        if (result[rawData["Resource No"]] && compoent) {
            if (!result[rawData["Resource No"]].Array) {
                result[rawData["Resource No"]].Array = [compoent];
            }else if (Array.isArray(result[rawData["Resource No"]].Array)) {
                result[rawData["Resource No"]].Array?.push(compoent);
            }
        }
    }

    return result;
}

export function findCategory(rawData: MappingFormat) {
    if (rawData.Category) {
        const category = CATEGORY_LIST.find(( cat ) => rawData.Category === cat.display);
        if (category) {
            rawData.CategoryCode = category.code;
            rawData.CategorySystem = category.system;
        }
    }
}