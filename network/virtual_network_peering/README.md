# azurerm_virtual_network_peering

Manages a virtual network peering which allows resources to access otherresources in the linked virtual network.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_network_peering" 
}

inputs = {
   name = "name of virtual_network_peering" 
   virtual_network_name = "virtual_network_name of virtual_network_peering" 
   remote_virtual_network_id = "remote_virtual_network_id of virtual_network_peering" 
   resource_group_name = "${resource_group}" 
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
| **var.name** | string  The name of the virtual network peering. Changing this forces a new resource to be created. | 
| **var.virtual_network_name** | string  The name of the virtual network. Changing this forces a new resource to be created. | 
| **var.remote_virtual_network_id** | string  The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.allow_virtual_network_access** | bool  `True`  |  Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to `true`. | 
| **var.allow_forwarded_traffic** | bool  `False`  |  Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`. | 
| **var.allow_gateway_transit** | bool  `False`  |  Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to `false`. | 
| **var.use_remote_gateways** | bool  `False`  |  Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`. | 
| **var.triggers** | string  -  |  A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See [the trigger example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering#example-usage-triggers) for an example on how to set it up. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Network Peering. | 

Additionally, all variables are provided as outputs.
