# azurerm_sentinel_threat_intelligence_indicator

Manages a Sentinel Threat Intelligence Indicator.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_threat_intelligence_indicator"   
}

inputs = {
   display_name = "The display name of the Threat Intelligence Indicator..."   
   pattern_type = "The type of pattern used by the Threat Intelligence Indicator..."   
   pattern = "The pattern used by the Threat Intelligence Indicator..."   
   source = "Source of the Threat Intelligence Indicator"   
   validate_from_utc = "The start of validate date in RFC3339"   
   # workspace_id → set in component_inputs
}

component_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **display_name** | string |  -  |  The display name of the Threat Intelligence Indicator. | 
| **pattern_type** | string |  `domain-name`, `file`, `ipv4-addr`, `ipv6-addr`, `url`  |  The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`. | 
| **pattern** | string |  -  |  The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`. | 
| **source** | string |  -  |  Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created. | 
| **validate_from_utc** | string |  -  |  The start of validate date in RFC3339. | 
| **workspace_id** | string |  -  |  The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **confidence** | string |  Confidence levels of the Threat Intelligence Indicator. | 
| **created_by** | string |  The creator of the Threat Intelligence Indicator. | 
| **description** | string |  The description of the Threat Intelligence Indicator. | 
| **extension** | string |  The extension config of the Threat Intelligence Indicator in JSON format. | 
| **external_reference** | [block](#external_reference-block-structure) |  One or more `external_reference` blocks. | 
| **granular_marking** | [block](#granular_marking-block-structure) |  One or more `granular_marking` blocks. | 
| **kill_chain_phase** | [block](#kill_chain_phase-block-structure) |  One or more `kill_chain_phase` blocks. | 
| **tags** | map |  Specifies a list of tags of the Threat Intelligence Indicator. | 
| **language** | string |  The language of the Threat Intelligence Indicator. | 
| **object_marking_refs** | string |  Specifies a list of Threat Intelligence marking references. | 
| **pattern_version** | string |  The version of a Threat Intelligence entity. | 
| **revoked** | bool |  Whether the Threat Intelligence entity revoked. | 
| **threat_types** | string |  Specifies a list of threat types of this Threat Intelligence Indicator. | 
| **validate_until_utc** | string |  The end of validate date of the Threat Intelligence Indicator in RFC3339 format. | 

### `kill_chain_phase` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name which should be used for the Lockheed Martin cyber kill chain phase. |

### `granular_marking` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `language` | string | No | - | The language of granular marking of the Threat Intelligence Indicator. |
| `marking_ref` | string | No | - | The reference of the granular marking of the Threat Intelligence Indicator. |
| `selectors` | list | No | - | A list of selectors of the granular marking of the Threat Intelligence Indicator. |

### `external_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | The description of the external reference of the Threat Intelligence Indicator. |
| `hashes` | string | No | - | The list of hashes of the external reference of the Threat Intelligence Indicator. |
| `source_name` | string | No | - | The source name of the external reference of the Threat Intelligence Indicator. |
| `url` | string | No | - | The url of the external reference of the Threat Intelligence Indicator. |



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
