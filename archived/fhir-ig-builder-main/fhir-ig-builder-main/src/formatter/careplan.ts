import { buildFormatBaseResource, MappingFormat } from "./utils";

export function buildFormatCarePlan(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    result = buildFormatBaseResource(rawData, result);

    return result;
}