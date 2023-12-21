# azurerm_network_manager_scope_connection

Manages a Network Manager Scope Connection which may cross tenants.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_scope_connection"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Scope Connectio..."   
   # network_manager_id → set in component_inputs
   # target_scope_id → set in component_inputs
   # tenant_id → set in component_inputs
}

component_inputs = {
   network_manager_id = "path/to/network_manager_component:id"   
   target_scope_id = "path/to/network_manager_component:id"   
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
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
| **name** | string |  Specifies the name which should be used for this Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **network_manager_id** | string |  Specifies the ID of the Network Manager Scope Connection. Changing this forces a new Network Manager Scope Connection to be created. | 
| **target_scope_id** | string |  Specifies the Resource ID of the target scope which the Network Manager is connected to. It should be either Subscription ID or Management Group ID. | 
| **tenant_id** | string |  Specifies the Tenant ID of the Resource which the Network Manager is connected to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Network Manager Scope Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Scope Connection. | 
| **connection_state** | string | No  | The Connection state of the Network Manager Scope Connection. | 

Additionally, all variables are provided as outputs.
