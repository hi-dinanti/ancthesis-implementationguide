import { buildFormatBaseResource, findCategory, MappingFormat, MappingFormatObservation } from "./utils";

export function buildFormatObservation(rawData: MappingFormatObservation, result: Record<string | number, MappingFormat>) {
    findCategory(rawData);

    const useComponents = rawData.Path && rawData.Path.lastIndexOf('component') >= 0;
    let comp: any;

    if (rawData.Path?.indexOf('valueCodeableConcept')) {
        rawData["Resource Template"] = 'Kode';
        rawData.Nilai = rawData.Code;
        rawData.NilaiSystem = rawData.CodeSystem;
        rawData.NilaiDisplay = rawData.Display;
    } else if (rawData.Path?.indexOf('valueInteger')) {
        rawData["Resource Template"] = 'Angka';
    } else if (rawData.Path?.indexOf('valueBoolean')) {
        rawData["Resource Template"] = 'Ya-Tidak';
    } else if (rawData.Path?.indexOf('valueString')) {
        rawData["Resource Template"] = 'Teks';
    } else if (rawData.Path?.indexOf('valueQuantity')) {
        rawData["Resource Template"] = 'Satuan';
    }

    switch (rawData["Resource Template"]) {
        case 'Angka':
            if (!rawData.Nilai)
                rawData.Nilai = 1;
            if (useComponents) {
                comp = {
                    code: {
                        coding: [
                            {
                                system: rawData.CodeSystem,
                                code: rawData.Code,
                                display: rawData.Display
                            }
                        ]
                    },
                    valueInteger: rawData.Nilai
                };
            }
            break;
        case 'Ya-Tidak':
            if (!rawData.Nilai)
                rawData.Nilai = true;
            else if (typeof rawData.Nilai === 'string')
                rawData.Nilai = rawData.Nilai.toLocaleLowerCase() === 'true';

            if (useComponents) {
                comp = {
                    code: {
                        coding: [
                            {
                                system: rawData.CodeSystem,
                                code: rawData.Code,
                                display: rawData.Display
                            }
                        ]
                    },
                    valueBoolean: rawData.Nilai
                };
            }
            break;
        case 'Teks':
            if (!rawData.Nilai)
                rawData.Nilai = '';

            if (useComponents) {
                comp = {
                    code: {
                        coding: [
                            {
                                system: rawData.CodeSystem,
                                code: rawData.Code,
                                display: rawData.Display
                            }
                        ]
                    },
                    valueString: rawData.Nilai
                };
            }
            break;
        case 'Satuan':
            if (!rawData.Nilai)
                rawData.Nilai = 1;

            if (useComponents) {
                comp = {
                    code: {
                        coding: [
                            {
                                system: rawData.CodeSystem,
                                code: rawData.Code,
                                display: rawData.Display
                            }
                        ]
                    },
                    valueQuantity: {
                        value: rawData.Nilai,
                        unit: rawData.NilaiUnit,
                        system: "http://unitsofmeasure.org",
                        code: rawData.NilaiUnit
                    }
                };
            }
            break;
        case 'Kode':
            if (!rawData.Nilai)
                rawData.Nilai = '';

            if (useComponents) {
                comp = {
                    code: {
                        coding: [
                            {
                                system: rawData.CodeSystem,
                                code: rawData.Code,
                                display: rawData.Display
                            }
                        ]
                    },
                    valueCodeableConcept: {
                        coding: [
                            {
                                system: rawData.NilaiSystem,
                                code: rawData.Nilai,
                                display: rawData.NilaiDisplay
                            }
                        ]
                    }
                };
            }
            break;
    }


    result = buildFormatBaseResource(rawData, result, comp);


    if (rawData["Resource No"]) {
        const data:MappingFormatObservation = result[rawData["Resource No"]] as MappingFormatObservation;
        if (rawData.Path?.indexOf('dataAbsentReason')) {
            data.DataAbsentReason = {
                coding: [
                    {
                        system: rawData.CodeSystem,
                        code: rawData.Code,
                        display: rawData.Display
                    }
                ]
            };
        }
        else if (rawData.Path?.indexOf('interpretation')) {
            data.Interpretation = {
                coding: [
                    {
                        system: rawData.CodeSystem,
                        code: rawData.Code,
                        display: rawData.Display
                    }
                ]
            };
        }
        else if (rawData.Path?.indexOf('method')) {
            data.Method = {
                coding: [
                    {
                        system: rawData.CodeSystem,
                        code: rawData.Code,
                        display: rawData.Display
                    }
                ]
            };
        }
        else if (rawData.Path?.indexOf('bodySite')) {
            data.BodySite = {
                coding: [
                    {
                        system: rawData.CodeSystem,
                        code: rawData.Code,
                        display: rawData.Display
                    }
                ]
            };
        }
    }

    // if (useComponents && rawData["Resource No"]) {

    //     if (!result[rawData["Resource No"]].Array) {
    //         result[rawData["Resource No"]].Array = [comp];
    //     }else
    //         result[rawData["Resource No"]].Array?.push(comp);
    // }
    
    return result;
}