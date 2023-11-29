# azurerm_network_manager_scope_connection

Manages a Network Manager Scope Connection which may cross tenants.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **var.network_manager_id** | string | True | Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **var.target_scope_id** | string | True | Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID. | 
| **var.tenant_id** | string | True | Specifies the Tenant ID of the Resource which the Network Manager is connected to. | 
| **var.description** | string | False | A description of the Network Manager Scope Connection. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_manager_id** | string  | - | 
| **target_scope_id** | string  | - | 
| **tenant_id** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Network Manager Scope Connection. | 
| **connection_state** | string  | The Connection state of the Network Manager Scope Connection. | 