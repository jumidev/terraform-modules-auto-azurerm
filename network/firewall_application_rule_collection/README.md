# azurerm_firewall_application_rule_collection

Manages an Application Rule Collection within an Azure Firewall.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Application Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **var.azure_firewall_name** | string | True | -  |  -  | Specifies the name of the Firewall in which the Application Rule Collection should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **var.priority** | string | True | -  |  `100`, `65000`  | Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **var.action** | string | True | -  |  `Allow`, `Deny`  | Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`. | 
| **var.rule** | block | True | -  |  -  | One or more `rule` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **azure_firewall_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **priority** | string  | - | 
| **action** | string  | - | 
| **rule** | block  | - | 