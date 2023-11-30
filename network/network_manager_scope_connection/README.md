# azurerm_network_manager_scope_connection

Manages a Network Manager Scope Connection which may cross tenants.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string  Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **var.network_manager_id** | string  Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **var.target_scope_id** | string  Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID. | 
| **var.tenant_id** | string  Specifies the Tenant ID of the Resource which the Network Manager is connected to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  A description of the Network Manager Scope Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Scope Connection. | 
| **connection_state** | string | No  | The Connection state of the Network Manager Scope Connection. | 

Additionally, all variables are provided as outputs.
