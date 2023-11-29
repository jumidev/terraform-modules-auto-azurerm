# azurerm_network_manager_management_group_connection

Manages a Network Manager Management Group Connection which may cross tenants.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created. | 
| **management_group_id** | string | True | -  |  -  | Specifies the ID of the target Management Group. Changing this forces a new resource to be created. | 
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | A description of the Network Manager Management Group Connection. | 

