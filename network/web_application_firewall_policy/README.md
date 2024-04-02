# azurerm_web_application_firewall_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/web_application_firewall_policy"   
}

inputs = {
   name = "The name of the policy"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   managed_rules = {
      this_managed_rules = {
         managed_rule_set = "..."         
      }
      
   }
   
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
| **location** | string |  Resource location. Changing this forces a new resource to be created. | 
| **managed_rules** | [block](#managed_rules-block-structure) |  A `managed_rules` blocks. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **custom_rules** | [block](#custom_rules-block-structure) |  One or more `custom_rules` blocks. | 
| **policy_settings** | [block](#policy_settings-block-structure) |  A `policy_settings` block. | 
| **tags** | map |  A mapping of tags to assign to the Web Application Firewall Policy. | 

### `custom_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Describes if the policy is in enabled state or disabled state. Defaults to 'true'. |
| `name` | string | No | - | Gets name of the resource that is unique within a policy. This name can be used to access the resource. |
| `priority` | string | Yes | - | Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. |
| `rule_type` | string | Yes | - | Describes the type of rule. Possible values are 'MatchRule', 'RateLimitRule' and 'Invalid'. |
| `match_conditions` | [block](#match_conditions-block-structure) | Yes | - | One or more 'match_conditions' blocks. |
| `action` | string | Yes | - | Type of action. Possible values are 'Allow', 'Block' and 'Log'. |
| `rate_limit_duration` | string | No | - | Specifies the duration at which the rate limit policy will be applied. Should be used with 'RateLimitRule' rule type. Possible values are 'FiveMins' and 'OneMin'. |
| `rate_limit_threshold` | string | No | - | Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided. |
| `group_rate_limit_by` | string | No | - | Specifies what grouping the rate limit will count requests by. Possible values are 'GeoLocation', 'ClientAddr' and 'None'. |

### `match_variables` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `variable_name` | string | Yes | - | The name of the Match Variable. Possible values are 'RemoteAddr', 'RequestMethod', 'QueryString', 'PostArgs', 'RequestUri', 'RequestHeaders', 'RequestBody' and 'RequestCookies'. |
| `selector` | string | No | - | Describes field of the matchVariable collection |

### `match_conditions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `match_variables` | [block](#match_variables-block-structure) | Yes | - | One or more 'match_variables' blocks. |
| `match_values` | list | No | - | A list of match values. This is **Required** when the 'operator' is not 'Any'. |
| `operator` | string | Yes | - | Describes operator to be matched. Possible values are 'Any', 'IPMatch', 'GeoMatch', 'Equal', 'Contains', 'LessThan', 'GreaterThan', 'LessThanOrEqual', 'GreaterThanOrEqual', 'BeginsWith', 'EndsWith' and 'Regex'. |
| `negation_condition` | string | No | - | Describes if this is negate condition or not |
| `transforms` | list | No | - | A list of transformations to do before the match is attempted. Possible values are 'HtmlEntityDecode', 'Lowercase', 'RemoveNulls', 'Trim', 'UrlDecode' and 'UrlEncode'. |

### `managed_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `exclusion` | string | No | - | One or more 'exclusion' block defined below. |
| `managed_rule_set` | string | Yes | - | One or more 'managed_rule_set' block defined below. |

### `policy_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Describes if the policy is in enabled state or disabled state. Defaults to 'true'. |
| `mode` | string | No | Prevention | Describes if it is in detection mode or prevention mode at the policy level. Valid values are 'Detection' and 'Prevention'. Defaults to 'Prevention'. |
| `file_upload_limit_in_mb` | number | No | 100 | The File Upload Limit in MB. Accepted values are in the range '1' to '4000'. Defaults to '100'. |
| `request_body_check` | bool | No | True | Is Request Body Inspection enabled? Defaults to 'true'. |
| `max_request_body_size_in_kb` | string | No | 128 | The Maximum Request Body Size in KB. Accepted values are in the range '8' to '2000'. Defaults to '128'. |
| `log_scrubbing` | [block](#log_scrubbing-block-structure) | No | - | One 'log_scrubbing' block. |
| `request_body_inspect_limit_in_kb` | string | No | 128 | Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to '128'. |

### `log_scrubbing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Whether the log scrubbing is enabled or disabled. Defaults to 'true'. |
| `rule` | string | No | - | One or more 'scrubbing_rule' blocks as define below. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **selector** | string | No  | Specifies which elements in the collection this rule applies to. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Web Application Firewall Policy. | 
| **http_listener_ids** | list | No  | A list of HTTP Listener IDs from an `azurerm_application_gateway`. | 
| **path_based_rule_ids** | list | No  | A list of URL Path Map Path Rule IDs from an `azurerm_application_gateway`. | 

Additionally, all variables are provided as outputs.
