# azurerm_databricks_virtual_network_peering

Manages a Databricks Virtual Network Peering

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databricks/databricks_virtual_network_peering" 
}

inputs = {
   name = "name of databricks_virtual_network_peering" 
   resource_group_name = "${resource_group}" 
   workspace_id = "workspace_id of databricks_virtual_network_peering" 
   address_space_prefixes = "address_space_prefixes of databricks_virtual_network_peering" 
   remote_address_space_prefixes = "remote_address_space_prefixes of databricks_virtual_network_peering" 
   remote_virtual_network_id = "remote_virtual_network_id of databricks_virtual_network_peering" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created. | 
| **var.workspace_id** | string | True | -  |  The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created. | 
| **var.address_space_prefixes** | list | True | -  |  A list of address blocks reserved for this virtual network in CIDR notation. | 
| **var.remote_address_space_prefixes** | list | True | -  |  A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created. | 
| **var.remote_virtual_network_id** | string | True | -  |  The ID of the remote virtual network. Changing this forces a new resource to be created. | 
| **var.allow_virtual_network_access** | bool | False | `True`  |  Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to `true`. | 
| **var.allow_forwarded_traffic** | bool | False | `False`  |  Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to `false`. | 
| **var.allow_gateway_transit** | bool | False | `False`  |  Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to `false`. | 
| **var.use_remote_gateways** | bool | False | `False`  |  Can remote gateways be used on the Databricks virtual network? Defaults to `false`. | 
| **var.virtual_network_id** | string | False | -  |  The ID of the internal Virtual Network used by the DataBricks Workspace. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databricks Virtual Network Peering. | 

Additionally, all variables are provided as outputs.
