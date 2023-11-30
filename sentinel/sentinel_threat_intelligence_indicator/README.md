# azurerm_sentinel_threat_intelligence_indicator

Manages a Sentinel Threat Intelligence Indicator.

## Example minimal component.hclt

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

### `external_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description of the external reference of the Threat Intelligence Indicator. |
| `hashes` | string | No | - | The list of hashes of the external reference of the Threat Intelligence Indicator. |
| `source_name` | string | No | - | The source name of the external reference of the Threat Intelligence Indicator. |
| `url` | string | No | - | The url of the external reference of the Threat Intelligence Indicator. |

### `granular_marking` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `language` | string | No | - | The language of granular marking of the Threat Intelligence Indicator. |
| `marking_ref` | string | No | - | The reference of the granular marking of the Threat Intelligence Indicator. |
| `selectors` | list | No | - | A list of selectors of the granular marking of the Threat Intelligence Indicator. |

### `kill_chain_phase` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Threat Intelligence Indicator. | 
| **created_on** | string | No  | The date of this Threat Intelligence Indicator created. | 
| **defanged** | bool | No  | Whether the Threat Intelligence entity is defanged? | 
| **external_id** | string | No  | The external ID of the Threat Intelligence Indicator. | 
| **external_last_updated_time_utc** | string | No  | the External last updated time in UTC. | 
| **indicator_type** | list | No  | A list of indicator types of this Threat Intelligence Indicator. | 
| **last_updated_time_utc** | string | No  | The last updated time of the Threat Intelligence Indicator in UTC. | 
| **guid** | string | No  | The guid of this Sentinel Threat Intelligence Indicator. | 
| **parsed_pattern** | block | No  | A `parsed_pattern` block. | 
| **pattern_type_key** | string | No  | The type key of parsed pattern. | 
| **pattern_type_values** | block | No  | A `pattern_type_values` block. | 
| **value** | string | No  | The value of the parsed pattern type. | 
| **value_type** | string | No  | The type of the value of the parsed pattern type value. | 

Additionally, all variables are provided as outputs.
