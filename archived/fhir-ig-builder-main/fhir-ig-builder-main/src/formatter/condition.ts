import { buildFormatBaseResource, findCategory, MappingFormat } from "./utils";

export function buildFormatCondition(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    result = buildFormatBaseResource(rawData, result);
    findCategory(rawData);

    return result;
}