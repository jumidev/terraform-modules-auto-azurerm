# azurerm_firewall_policy_rule_collection_group

Manages a Firewall Policy Rule Collection Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **firewall_policy_id** | string | True | -  |  -  | The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **priority** | string | True | -  |  -  | The priority of the Firewall Policy Rule Collection Group. The range is 100-65000. | 
| **application_rule_collection** | block | False | -  |  -  | One or more `application_rule_collection` blocks. | 
| **nat_rule_collection** | block | False | -  |  -  | One or more `nat_rule_collection` blocks. | 
| **network_rule_collection** | block | False | -  |  -  | One or more `network_rule_collection` blocks. | 

