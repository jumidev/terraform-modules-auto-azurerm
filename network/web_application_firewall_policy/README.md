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
   managed_rules = "managed_rules of web_application_firewall_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Resource location. Changing this forces a new resource to be created. | 
| **var.custom_rules** | block | False | One or more `custom_rules` blocks. | 
| **var.policy_settings** | block | False | A `policy_settings` block. | 
| **var.managed_rules** | block | True | A `managed_rules` blocks. | 
| **var.tags** | map | False | A mapping of tags to assign to the Web Application Firewall Policy. | 

### `custom_rules` block structure

> `enabled` (bool): Describes if the policy is in enabled state or disabled state. Defaults to 'true'.\
> `name` (string): Gets name of the resource that is unique within a policy. This name can be used to access the resource.\
> `priority` (string): (REQUIRED) Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value.\
> `rule_type` (string): (REQUIRED) Describes the type of rule. Possible values are 'MatchRule', 'RateLimitRule' and 'Invalid'.\
> `match_conditions` (block): (REQUIRED) One or more 'match_conditions' blocks.\
> `action` (string): (REQUIRED) Type of action. Possible values are 'Allow', 'Block' and 'Log'.\
> `rate_limit_duration` (string): Specifies the duration at which the rate limit policy will be applied. Should be used with 'RateLimitRule' rule type. Possible values are 'FiveMins' and 'OneMin'.\
> `rate_limit_threshold` (string): Specifies the threshold value for the rate limit policy. Must be greater than or equal to 1 if provided.\
> `group_rate_limit_by` (string): Specifies what grouping the rate limit will count requests by. Possible values are 'GeoLocation', 'ClientAddr' and 'None'.\

### `policy_settings` block structure

> `enabled` (bool): Describes if the policy is in enabled state or disabled state. Defaults to 'true'.\
> `mode` (string): Describes if it is in detection mode or prevention mode at the policy level. Valid values are 'Detection' and 'Prevention'. Defaults to 'Prevention'.\
> `file_upload_limit_in_mb` (int): The File Upload Limit in MB. Accepted values are in the range '1' to '4000'. Defaults to '100'.\
> `request_body_check` (bool): Is Request Body Inspection enabled? Defaults to 'true'.\
> `max_request_body_size_in_kb` (string): The Maximum Request Body Size in KB. Accepted values are in the range '8' to '2000'. Defaults to '128'.\
> `log_scrubbing` (block): One 'log_scrubbing' block.\
> `request_body_inspect_limit_in_kb` (string): Specifies the maximum request body inspection limit in KB for the Web Application Firewall. Defaults to '128'.\

### `managed_rules` block structure

> `exclusion` (list): One or more 'exclusion' block defined below.\
> `managed_rule_set` (list): (REQUIRED) One or more 'managed_rule_set' block defined below.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Application Firewall Policy. | 
| **http_listener_ids** | list | No  | A list of HTTP Listener IDs from an `azurerm_application_gateway`. | 
| **path_based_rule_ids** | list | No  | A list of URL Path Map Path Rule IDs from an `azurerm_application_gateway`. | 

Additionally, all variables are provided as outputs.
