# azurerm_cdn_frontdoor_firewall_policy

Manages a Front Door (standard/premium) Firewall Policy instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_firewall_policy" 
}

inputs = {
   name = "name of cdn_frontdoor_firewall_policy" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of cdn_frontdoor_firewall_policy" 
   mode = "mode of cdn_frontdoor_firewall_policy" 
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
| **var.name** | string  -  |  The name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the resource group. Changing this forces a new resource to be created. | 
| **var.sku_name** | string  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  |  The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 
| **var.mode** | string  `Detection`, `Prevention`  |  The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.enabled** | bool  `True`  |  -  |  Is the Front Door Firewall Policy enabled? Defaults to `true`. | 
| **var.redirect_url** | string  -  |  -  |  If action type is redirect, this field represents redirect URL for the client. | 
| **var.custom_rule** | block  -  |  -  |  One or more `custom_rule` blocks. | 
| **var.custom_block_response_status_code** | string  -  |  `200`, `403`, `405`, `406`, `429`  |  If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **var.custom_block_response_body** | string  -  |  -  |  If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **var.managed_rule** | block  -  |  -  |  One or more `managed_rule` blocks. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the Front Door Firewall Policy. | 

### `custom_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to perform when the rule is matched. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'. |
| `enabled` | bool | No | True | Is the rule is enabled or disabled? Defaults to 'true'. |
| `priority` | string | No | 1 | The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to '1'. |
| `type` | string | Yes | - | The type of rule. Possible values are 'MatchRule' or 'RateLimitRule'. |
| `match_condition` | list | No | - | One or more 'match_condition' block defined below. Can support up to '10' 'match_condition' blocks. |
| `rate_limit_duration_in_minutes` | int | No | 1 | The rate limit duration in minutes. Defaults to '1'. |
| `rate_limit_threshold` | string | No | 10 | The rate limit threshold. Defaults to '10'. |

### `managed_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The name of the managed rule to use with this resource. Possible values include 'DefaultRuleSet', 'Microsoft_DefaultRuleSet', 'BotProtection' or 'Microsoft_BotManagerRuleSet'. |
| `version` | string | Yes | - | The version of the managed rule to use with this resource. Possible values depends on which DRS type you are using, for the 'DefaultRuleSet' type the possible values include '1.0' or 'preview-0.1'. For 'Microsoft_DefaultRuleSet' the possible values include '1.1', '2.0' or '2.1'. For 'BotProtection' the value must be 'preview-0.1' and for 'Microsoft_BotManagerRuleSet' the value must be '1.0'. |
| `action` | string | Yes | - | The action to perform for all DRS rules when the managed rule is matched or when the anomaly score is 5 or greater depending on which version of the DRS you are using. Possible values include 'Allow', 'Log', 'Block', and 'Redirect'. |
| `exclusion` | block | No | - | One or more 'exclusion' blocks. |
| `override` | block | No | - | One or more 'override' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Firewall Policy. | 
| **frontend_endpoint_ids** | string | No  | The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy. | 

Additionally, all variables are provided as outputs.
