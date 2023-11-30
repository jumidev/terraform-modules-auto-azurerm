# azurerm_sentinel_threat_intelligence_indicator

Manages a Sentinel Threat Intelligence Indicator.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.display_name** | string | True | -  |  The display name of the Threat Intelligence Indicator. | 
| **var.pattern_type** | string | True | `domain-name`, `file`, `ipv4-addr`, `ipv6-addr`, `url`  |  The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`. | 
| **var.pattern** | string | True | -  |  The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`. | 
| **var.source** | string | True | -  |  Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created. | 
| **var.validate_from_utc** | string | True | -  |  The start of validate date in RFC3339. | 
| **var.workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created. | 
| **var.confidence** | string | False | -  |  Confidence levels of the Threat Intelligence Indicator. | 
| **var.created_by** | string | False | -  |  The creator of the Threat Intelligence Indicator. | 
| **var.description** | string | False | -  |  The description of the Threat Intelligence Indicator. | 
| **var.extension** | string | False | -  |  The extension config of the Threat Intelligence Indicator in JSON format. | 
| **var.external_reference** | block | False | -  |  One or more `external_reference` blocks. | 
| **var.granular_marking** | block | False | -  |  One or more `granular_marking` blocks. | 
| **var.kill_chain_phase** | block | False | -  |  One or more `kill_chain_phase` blocks. | 
| **var.tags** | map | False | -  |  Specifies a list of tags of the Threat Intelligence Indicator. | 
| **var.language** | string | False | -  |  The language of the Threat Intelligence Indicator. | 
| **var.object_marking_refs** | string | False | -  |  Specifies a list of Threat Intelligence marking references. | 
| **var.pattern_version** | string | False | -  |  The version of a Threat Intelligence entity. | 
| **var.revoked** | bool | False | -  |  Whether the Threat Intelligence entity revoked. | 
| **var.threat_types** | string | False | -  |  Specifies a list of threat types of this Threat Intelligence Indicator. | 
| **var.validate_until_utc** | string | False | -  |  The end of validate date of the Threat Intelligence Indicator in RFC3339 format. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **display_name** | string  | - | 
| **pattern_type** | string  | - | 
| **pattern** | string  | - | 
| **source** | string  | - | 
| **validate_from_utc** | string  | - | 
| **workspace_id** | string  | - | 
| **confidence** | string  | - | 
| **created_by** | string  | - | 
| **description** | string  | - | 
| **extension** | string  | - | 
| **external_reference** | block  | - | 
| **granular_marking** | block  | - | 
| **kill_chain_phase** | block  | - | 
| **tags** | map  | - | 
| **language** | string  | - | 
| **object_marking_refs** | string  | - | 
| **pattern_version** | string  | - | 
| **revoked** | bool  | - | 
| **threat_types** | string  | - | 
| **validate_until_utc** | string  | - | 
| **id** | string  | The ID of the Sentinel Threat Intelligence Indicator. | 
| **created_on** | string  | The date of this Threat Intelligence Indicator created. | 
| **defanged** | bool  | Whether the Threat Intelligence entity is defanged? | 
| **external_id** | string  | The external ID of the Threat Intelligence Indicator. | 
| **external_last_updated_time_utc** | string  | the External last updated time in UTC. | 
| **indicator_type** | list  | A list of indicator types of this Threat Intelligence Indicator. | 
| **last_updated_time_utc** | string  | The last updated time of the Threat Intelligence Indicator in UTC. | 
| **guid** | string  | The guid of this Sentinel Threat Intelligence Indicator. | 
| **parsed_pattern** | block  | A `parsed_pattern` block. | 
| **pattern_type_key** | string  | The type key of parsed pattern. | 
| **pattern_type_values** | block  | A `pattern_type_values` block. | 
| **value** | string  | The value of the parsed pattern type. | 
| **value_type** | string  | The type of the value of the parsed pattern type value. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_threat_intelligence_indicator" 
}

inputs = {
   display_name = "display_name of sentinel_threat_intelligence_indicator" 
   pattern_type = "pattern_type of sentinel_threat_intelligence_indicator" 
   pattern = "pattern of sentinel_threat_intelligence_indicator" 
   source = "source of sentinel_threat_intelligence_indicator" 
   validate_from_utc = "validate_from_utc of sentinel_threat_intelligence_indicator" 
   workspace_id = "workspace_id of sentinel_threat_intelligence_indicator" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```