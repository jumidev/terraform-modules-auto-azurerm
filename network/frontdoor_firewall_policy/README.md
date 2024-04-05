# azurerm_frontdoor_firewall_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/frontdoor_firewall_policy"   
}
inputs = {
   name = "The name of the policy"   
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
| **name** | string |  The name of the policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enabled** | bool |  `True`  |  -  |  Is the policy a enabled state or disabled state. Defaults to `true`. | 
| **mode** | string |  `Prevention`  |  `Detection`, `Prevention`  |  The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`. | 
| **redirect_url** | string |  -  |  -  |  If action type is redirect, this field represents redirect URL for the client. | 
| **custom_rules** | [block](#custom_rule-block-structure) |  -  |  -  |  One or more `custom_rule` blocks. | 
| **custom_block_response_status_code** | string |  -  |  `200`, `403`, `405`, `406`, `429`  |  If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **custom_block_response_body** | string |  -  |  -  |  If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **managed_rules** | [block](#managed_rule-block-structure) |  -  |  -  |  One or more `managed_rule` blocks. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the Web Application Firewall Policy. | 

### `managed_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The name of the managed rule to use with this resource. |
| `version` | string | Yes | - | The version on the managed rule to use with this resource. |
| `exclusion` | [block](#exclusion-block-structure) | No | - | One or more 'exclusion' blocks. |
| `override` | [block](#override-block-structure) | No | - | One or more 'override' blocks. |

### `custom_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Gets name of the resource that is unique within a policy. This name can be used to access the resource. |
| `action` | string | Yes | - | The action to perform when the rule is matched. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'. |
| `enabled` | bool | No | True | Is the rule is enabled or disabled? Defaults to 'true'. |
| `priority` | string | No | 1 | The priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. Defaults to '1'. |
| `type` | string | Yes | - | The type of rule. Possible values are 'MatchRule' or 'RateLimitRule'. |
| `match_condition` | string | No | - | One or more 'match_condition' block defined below. Can support up to '10' 'match_condition' blocks. |
| `rate_limit_duration_in_minutes` | number | No | 1 | The rate limit duration in minutes. Defaults to '1'. |
| `rate_limit_threshold` | string | No | 10 | The rate limit threshold. Defaults to '10'. |

### `override` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule_group_name` | string | Yes | - | The managed rule group to override. |
| `exclusion` | [block](#exclusion-block-structure) | No | - | One or more 'exclusion' blocks. |
| `rule` | [block](#rule-block-structure) | No | - | One or more 'rule' blocks. If none are specified, all of the rules in the group will be disabled. |

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `rule_id` | string | Yes | - | Identifier for the managed rule. |
| `action` | string | Yes | - | The action to be applied when the rule matches. Possible values are 'Allow', 'Block', 'Log', or 'Redirect'. |
| `enabled` | bool | No | False | Is the managed rule override enabled or disabled. Defaults to 'false' |
| `exclusion` | [block](#exclusion-block-structure) | No | - | One or more 'exclusion' blocks. |

### `exclusion` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `match_variable` | string | Yes | - | The variable type to be excluded. Possible values are 'QueryStringArgNames', 'RequestBodyPostArgNames', 'RequestCookieNames', 'RequestHeaderNames'. |
| `operator` | string | Yes | - | Comparison operator to apply to the selector when specifying which elements in the collection this exclusion applies to. Possible values are: 'Equals', 'Contains', 'StartsWith', 'EndsWith', 'EqualsAny'. |
| `selector` | string | Yes | - | Selector for the value in the 'match_variable' attribute this exclusion applies to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **selector** | string | No  | Selector for the value in the `match_variable` attribute this exclusion applies to. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Front Door Firewall Policy. | 
| **location** | string | No  | The Azure Region where this Front Door Firewall Policy exists. | 
| **frontend_endpoint_ids** | string | No  | The Frontend Endpoints associated with this Front Door Web Application Firewall policy. | 

Additionally, all variables are provided as outputs.
