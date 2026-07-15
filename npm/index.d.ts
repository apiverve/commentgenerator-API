declare module '@apiverve/commentgenerator' {
  export interface commentgeneratorOptions {
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

  export interface commentgeneratorResponse {
    status: string;
    error: string | null;
    data: CommentGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CommentGeneratorData {
      count:    number | null;
      mode:     null | string;
      tone:     null | string;
      comments: (null | string)[];
  }

  export default class commentgeneratorWrapper {
    constructor(options: commentgeneratorOptions);

    execute(callback: (error: any, data: commentgeneratorResponse | null) => void): Promise<commentgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: commentgeneratorResponse | null) => void): Promise<commentgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<commentgeneratorResponse>;
  }
}
