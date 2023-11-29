# azurerm_web_application_firewall_policy

Manages a Azure Web Application Firewall Policy instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Resource location. Changing this forces a new resource to be created. | 
| **custom_rules** | block | False | -  |  -  | One or more `custom_rules` blocks. | 
| **policy_settings** | block | False | -  |  -  | A `policy_settings` block. | 
| **managed_rules** | block | True | -  |  -  | A `managed_rules` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Web Application Firewall Policy. | 

