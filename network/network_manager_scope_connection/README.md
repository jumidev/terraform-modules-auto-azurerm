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

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_scope_connection" 
}

inputs = {
   name = "name of network_manager_scope_connection" 
   network_manager_id = "network_manager_id of network_manager_scope_connection" 
   target_scope_id = "target_scope_id of network_manager_scope_connection" 
   tenant_id = "tenant_id of network_manager_scope_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```