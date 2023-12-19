# azurerm_databricks_virtual_network_peering

Manages a Databricks Virtual Network Peering

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "databricks/databricks_virtual_network_peering"   
}

inputs = {
   name = "Specifies the name of the Databricks Virtual Network Peering resource..."   
   resource_group_name = "${resource_group}"   
   # workspace_id → set in component_inputs
   address_space_prefixes = "A list of address blocks reserved for this virtual network in CIDR notation..."   
   remote_address_space_prefixes = "A list of address blocks reserved for the remote virtual network in CIDR notatio..."   
   remote_virtual_network_id = "The ID of the remote virtual network"   
}

component_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created. | 
| **workspace_id** | string |  The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created. | 
| **address_space_prefixes** | list |  A list of address blocks reserved for this virtual network in CIDR notation. | 
| **remote_address_space_prefixes** | list |  A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created. | 
| **remote_virtual_network_id** | string |  The ID of the remote virtual network. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **allow_virtual_network_access** | bool |  `True`  |  Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`. | 
| **allow_forwarded_traffic** | bool |  `False`  |  Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`. | 
| **allow_gateway_transit** | bool |  `False`  |  Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`. | 
| **use_remote_gateways** | bool |  `False`  |  Can remote gateways be used on the Databricks virtual network? Defaults to `false`. | 
| **virtual_network_id** | string |  -  |  The ID of the internal Virtual Network used by the DataBricks Workspace. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Virtual Network Peering. | 

Additionally, all variables are provided as outputs.
