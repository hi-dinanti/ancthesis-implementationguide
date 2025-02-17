import { buildFormatBaseResource, MappingFormat } from "./utils";

export function buildFormatImmunization(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    result = buildFormatBaseResource(rawData, result);

    return result;
}