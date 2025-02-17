import { buildFormatBaseResource, MappingFormat } from "./utils";

export function buildFormatEncounter(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    const useComponents = rawData.Path && rawData.Path.lastIndexOf('reasonCode') >= 0;
    let comp: any;

    if (useComponents) {
        comp = {
            coding: [
                {
                    system: rawData.CodeSystem,
                    code: rawData.Code,
                    display: rawData.Display
                }
            ]
        };
    }
    
    result = buildFormatBaseResource(rawData, result, comp);
    
    return result;
}