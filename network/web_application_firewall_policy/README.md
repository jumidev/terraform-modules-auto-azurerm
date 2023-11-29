# azurerm_web_application_firewall_policy

Manages a Azure Web Application Firewall Policy instance.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **custom_rules** | block  | - | 
| **policy_settings** | block  | - | 
| **managed_rules** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Web Application Firewall Policy. | 
| **http_listener_ids** | list  | A list of HTTP Listener IDs from an `azurerm_application_gateway`. | 
| **path_based_rule_ids** | list  | A list of URL Path Map Path Rule IDs from an `azurerm_application_gateway`. | 