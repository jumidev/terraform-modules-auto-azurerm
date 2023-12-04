# azurerm_frontdoor_rules_engine

!> **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new [Azure Front Door (standard/premium) resources](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_custom_domain). For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.Manages an Azure Front Door (classic) Rules Engine configuration and rules.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/frontdoor_rules_engine" 
}

inputs = {
   name = "name of frontdoor_rules_engine" 
   frontdoor_name = "frontdoor_name of frontdoor_rules_engine" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Rules engine configuration. Changing this forces a new resource to be created. | 
| **frontdoor_name** | string |  The name of the Front Door instance. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Whether this Rules engine configuration is enabled? Defaults to `true`. | 
| **rule** | [block](#rule-block-structure) |  -  |  A `rule` block. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `priority` | string | Yes | - | Priority of the rule, must be unique per rules engine definition. |
| `action` | [block](#rule-block-structure) | No | - | An 'action' block. |
| `match_condition` | [block](#rule-block-structure) | No | - | One or more 'match_condition' block. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `request_header` | [block](#action-block-structure) | No | - | A 'request_header' block. |
| `response_header` | [block](#action-block-structure) | No | - | A 'response_header' block. |

### `response_header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `header_action_type` | string | No | - | can be set to 'Overwrite', 'Append' or 'Delete'. |
| `header_name` | string | No | - | header name (string). |
| `value` | string | No | - | value name (string). |

### `request_header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `header_action_type` | string | No | - | can be set to 'Overwrite', 'Append' or 'Delete'. |
| `header_name` | string | No | - | header name (string). |
| `value` | string | No | - | value name (string). |

### `match_condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `variable` | string | No | - | can be set to 'IsMobile', 'RemoteAddr', 'RequestMethod', 'QueryString', 'PostArgs', 'RequestURI', 'RequestPath', 'RequestFilename', 'RequestFilenameExtension','RequestHeader','RequestBody' or 'RequestScheme'. |
| `selector` | string | No | - | match against a specific key when 'variable' is set to 'PostArgs' or 'RequestHeader'. It cannot be used with 'QueryString' and 'RequestMethod'. |
| `operator` | string | Yes | - | can be set to 'Any', 'IPMatch', 'GeoMatch', 'Equal', 'Contains', 'LessThan', 'GreaterThan', 'LessThanOrEqual', 'GreaterThanOrEqual', 'BeginsWith' or 'EndsWith' |
| `transform` | list | No | - | can be set to one or more values out of 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' and 'UrlEncode' |
| `negate_condition` | bool | No | False | can be set to 'true' or 'false' to negate the given condition. Defaults to 'false'. |
| `value` | list | No | - | (array) can contain one or more strings. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
