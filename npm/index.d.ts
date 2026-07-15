declare module '@apiverve/moonphases' {
  export interface moonphasesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface moonphasesResponse {
    status: string;
    error: string | null;
    data: MoonPhasesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MoonPhasesData {
      phase:             null | string;
      phaseEmoji:        null | string;
      illumination:      number | null;
      waxing:            boolean | null;
      waning:            boolean | null;
      lunarAge:          number | null;
      lunarAgePercent:   number | null;
      lunationNumber:    number | null;
      lunarDistance:     number | null;
      nextFullMoon:      Date | null;
      lastFullMoon:      Date | null;
      daysToFullMoon:    number | null;
      daysSinceFullMoon: number | null;
  }

  export default class moonphasesWrapper {
    constructor(options: moonphasesOptions);

    execute(callback: (error: any, data: moonphasesResponse | null) => void): Promise<moonphasesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: moonphasesResponse | null) => void): Promise<moonphasesResponse>;
    execute(query?: Record<string, any>): Promise<moonphasesResponse>;
  }
}
