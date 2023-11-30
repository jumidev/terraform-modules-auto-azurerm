# azurerm_web_application_firewall_policy

Manages a Azure Web Application Firewall Policy instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/web_application_firewall_policy" 
}

inputs = {
   name = "name of web_application_firewall_policy" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   managed_rules = {
      example_managed_rules = {
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
| **var.name** | string  The name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group. Changing this forces a new resource to be created. | 
| **var.location** | string  Resource location. Changing this forces a new resource to be created. | 
| **var.managed_rules** | block  A `managed_rules` blocks. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.custom_rules** | block  One or more `custom_rules` blocks. | 
| **var.policy_settings** | block  A `policy_settings` block. | 
| **var.tags** | map  A mapping of tags to assign to the Web Application Firewall Policy. | 

### `custom_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Describes if the policy is in enabled state or disabled state. Defaults to 'true'. |
| `priority` | string | Yes | - | Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. |
| `rule_type` | string | Yes | - | Describes the type of rule. Possible values are 'MatchRule', 'RateLimitRule' and 'Invalid'. |
| `match_conditions` | block | Yes | - | One or more 'match_conditions' blocks. |
| `action` | string | Yes | - | Type of action. Possible values are 'Allow', 'Block' and 'Log'. |
| `rate_limit_duration` | string | No | - | Specifies the duration at which the rate limit policy will be applied. Should be used with 'RateLimitRule' rule type. Possible values are 'FiveMins' and 'OneMin'. |
| `rate_limit_threshold` | string | No | - | Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided. |
| `group_rate_limit_by` | string | No | - | Specifies what grouping the rate limit will count requests by. Possible values are 'GeoLocation', 'ClientAddr' and 'None'. |

### `policy_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Describes if the policy is in enabled state or disabled state. Defaults to 'true'. |
| `mode` | string | No | Prevention | Describes if it is in detection mode or prevention mode at the policy level. Valid values are 'Detection' and 'Prevention'. Defaults to 'Prevention'. |
| `file_upload_limit_in_mb` | int | No | 100 | The File Upload Limit in MB. Accepted values are in the range '1' to '4000'. Defaults to '100'. |
| `request_body_check` | bool | No | True | Is Request Body Inspection enabled? Defaults to 'true'. |
| `max_request_body_size_in_kb` | string | No | 128 | The Maximum Request Body Size in KB. Accepted values are in the range '8' to '2000'. Defaults to '128'. |
| `log_scrubbing` | block | No | - | One 'log_scrubbing' block. |
| `request_body_inspect_limit_in_kb` | string | No | 128 | Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to '128'. |

### `managed_rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `exclusion` | list | No | - | One or more 'exclusion' block defined below. |
| `managed_rule_set` | list | Yes | - | One or more 'managed_rule_set' block defined below. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Application Firewall Policy. | 
| **http_listener_ids** | list | No  | A list of HTTP Listener IDs from an `azurerm_application_gateway`. | 
| **path_based_rule_ids** | list | No  | A list of URL Path Map Path Rule IDs from an `azurerm_application_gateway`. | 

Additionally, all variables are provided as outputs.
