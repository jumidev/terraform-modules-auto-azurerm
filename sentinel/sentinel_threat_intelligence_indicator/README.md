# azurerm_sentinel_threat_intelligence_indicator

Manages a Sentinel Threat Intelligence Indicator.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **display_name** | string | True | -  |  -  | The display name of the Threat Intelligence Indicator. | 
| **pattern_type** | string | True | -  |  `domain-name`, `file`, `ipv4-addr`, `ipv6-addr`, `url`  | The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`. | 
| **pattern** | string | True | -  |  -  | The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`. | 
| **source** | string | True | -  |  -  | Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created. | 
| **validate_from_utc** | string | True | -  |  -  | The start of validate date in RFC3339. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created. | 
| **confidence** | string | False | -  |  -  | Confidence levels of the Threat Intelligence Indicator. | 
| **created_by** | string | False | -  |  -  | The creator of the Threat Intelligence Indicator. | 
| **description** | string | False | -  |  -  | The description of the Threat Intelligence Indicator. | 
| **extension** | string | False | -  |  -  | The extension config of the Threat Intelligence Indicator in JSON format. | 
| **external_reference** | block | False | -  |  -  | One or more `external_reference` blocks. | 
| **granular_marking** | block | False | -  |  -  | One or more `granular_marking` blocks. | 
| **kill_chain_phase** | block | False | -  |  -  | One or more `kill_chain_phase` blocks. | 
| **tags** | map | False | -  |  -  | Specifies a list of tags of the Threat Intelligence Indicator. | 
| **language** | string | False | -  |  -  | The language of the Threat Intelligence Indicator. | 
| **object_marking_refs** | string | False | -  |  -  | Specifies a list of Threat Intelligence marking references. | 
| **pattern_version** | string | False | -  |  -  | The version of a Threat Intelligence entity. | 
| **revoked** | bool | False | -  |  -  | Whether the Threat Intelligence entity revoked. | 
| **threat_types** | string | False | -  |  -  | Specifies a list of threat types of this Threat Intelligence Indicator. | 
| **validate_until_utc** | string | False | -  |  -  | The end of validate date of the Threat Intelligence Indicator in RFC3339 format. | 

