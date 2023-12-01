# azurerm_network_manager_management_group_connection

Manages a Network Manager Management Group Connection which may cross tenants.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_manager_management_group_connection" 
}

inputs = {
   name = "name of network_manager_management_group_connection" 
   management_group_id = "management_group_id of network_manager_management_group_connection" 
   network_manager_id = "network_manager_id of network_manager_management_group_connection" 
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
| **name** | string |  Specifies the name which should be used for this Network Manager Management Group Connection. Changing this forces a new Network Manager Management Group Connection to be created. | 
| **management_group_id** | string |  Specifies the ID of the target Management Group. Changing this forces a new resource to be created. | 
| **network_manager_id** | string |  Specifies the ID of the Network Manager which the Management Group is connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Network Manager Management Group Connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Management Group Connection. | 
| **connection_state** | string | No  | The Connection state of the Network Manager Management Group Connection. | 

Additionally, all variables are provided as outputs.
