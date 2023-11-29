# azurerm_firewall_network_rule_collection

Manages a Network Rule Collection within an Azure Firewall.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **azure_firewall_name** | string | True | -  |  -  | Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **priority** | string | True | -  |  `100`, `65000`  | Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **action** | string | True | -  |  `Allow`, `Deny`  | Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`. | 
| **rule** | block | True | -  |  -  | One or more `rule` blocks. | 

