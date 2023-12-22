# azurerm_network_manager_admin_rule_collection

Manages a Network Manager Admin Rule Collection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_manager_admin_rule_collection"   
}

inputs = {
   name = "Specifies the name which should be used for this Network Manager Admin Rule Coll..."   
   # security_admin_configuration_id → set in component_inputs
   network_group_ids = "A list of Network Group ID which this Network Manager Admin Rule Collection appl..."   
}

component_inputs = {
   security_admin_configuration_id = "path/to/network_manager_security_admin_configuration_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **security_admin_configuration_id** | string |  Specifies the ID of the Network Manager Security Admin Configuration. Changing this forces a new Network Manager Admin Rule Collection to be created. | 
| **network_group_ids** | list |  A list of Network Group ID which this Network Manager Admin Rule Collection applies to. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of the Network Manager Admin Rule Collection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Manager Admin Rule Collection. | 

Additionally, all variables are provided as outputs.
