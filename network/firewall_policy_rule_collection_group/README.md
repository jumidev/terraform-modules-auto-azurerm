# azurerm_firewall_policy_rule_collection_group

Manages a Firewall Policy Rule Collection Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.firewall_policy_id** | string | True | The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.priority** | string | True | The priority of the Firewall Policy Rule Collection Group. The range is 100-65000. | 
| **var.application_rule_collection** | block | False | One or more `application_rule_collection` blocks. | 
| **var.nat_rule_collection** | block | False | One or more `nat_rule_collection` blocks. | 
| **var.network_rule_collection** | block | False | One or more `network_rule_collection` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **firewall_policy_id** | string  | - | 
| **priority** | string  | - | 
| **application_rule_collection** | block  | - | 
| **nat_rule_collection** | block  | - | 
| **network_rule_collection** | block  | - | 
| **id** | string  | The ID of the Firewall Policy Rule Collection Group. | 