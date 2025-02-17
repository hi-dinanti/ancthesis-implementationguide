import { buildFormatEncounter } from "./encounter";
import { buildFormatCondition } from "./condition";
import { buildFormatObservation } from "./observation";
import { MappingFormat } from "./utils";

export function buildFormat(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    if (rawData.Path) {
        rawData.Path = rawData.Path?.replace(rawData.Resource + ".", "");
    }

    switch (rawData.Resource) {
        case 'Encounter':
            return buildFormatEncounter(rawData, result);
        case 'Condition':
            return buildFormatCondition(rawData, result);
        case 'Observation':
            return buildFormatObservation(rawData, result);
    }

    return result;
}