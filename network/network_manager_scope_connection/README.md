# azurerm_network_manager_scope_connection

Manages a Network Manager Scope Connection which may cross tenants.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **network_manager_id** | string | True | -  |  -  | Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **target_scope_id** | string | True | -  |  -  | Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID. | 
| **tenant_id** | string | True | -  |  -  | Specifies the Tenant ID of the Resource which the Network Manager is connected to. | 
| **description** | string | False | -  |  -  | A description of the Network Manager Scope Connection. | 

