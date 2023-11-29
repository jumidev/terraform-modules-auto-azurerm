# azurerm_network_manager_admin_rule_collection

Manages a Network Manager Admin Rule Collection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **security_admin_configuration_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **network_group_ids** | list | True | -  |  -  | A list of Network Group ID which this Network Manager Admin Rule Collection applies to. | 
| **description** | string | False | -  |  -  | A description of the Network Manager Admin Rule Collection. | 

