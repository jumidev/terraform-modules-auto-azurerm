# azurerm_virtual_network_peering



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_peering"   
}
inputs = {
   name = "The name of the virtual network peering"   
   # virtual_network_name → set in component_inputs
   # remote_virtual_network_id → set in component_inputs
   resource_group_name = "${resource_group}"   
}
component_inputs = {
   virtual_network_name = "path/to/virtual_network_component:name"   
   remote_virtual_network_id = "path/to/virtual_network_component:id"   
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
| **name** | string |  The name of the virtual network peering. Changing this forces a new resource to be created. | 
| **virtual_network_name** | string |  The name of the virtual network. Changing this forces a new resource to be created. | 
| **remote_virtual_network_id** | string |  The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **allow_virtual_network_access** | bool |  `True`  |  -  |  Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to `true`. | 
| **allow_forwarded_traffic** | bool |  `False`  |  -  |  Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`. | 
| **allow_gateway_transit** | bool |  `False`  |  -  |  Controls gatewayLinks can be used in the remote virtual network's link to the local virtual network. Defaults to `false`. | 
| **local_subnet_names** | list |  -  |  -  |  A list of local Subnet names that are Subnet peered with remote Virtual Network. | 
| **only_ipv6_peering_enabled** | bool |  -  |  -  |  Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created. | 
| **peer_complete_virtual_networks_enabled** | bool |  `True`  |  -  |  Specifies whether complete Virtual Network address space is peered. Defaults to `true`. Changing this forces a new resource to be created. | 
| **remote_subnet_names** | list |  -  |  -  |  A list of remote Subnet names from remote Virtual Network that are Subnet peered. | 
| **use_remote_gateways** | bool |  `False`  |  `true`, `allow_gateway_transit`  |  Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`. -> **NOTE:** `use_remote_gateways` must be set to `false` if using Global Virtual Network Peerings. | 
| **triggers** | string |  -  |  -  |  A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See [the trigger example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering#example-usage-triggers) for an example on how to set it up. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **triggers** | string | No  | A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See [the trigger example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering#example-usage-triggers) for an example on how to set it up. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Network Peering. | 

Additionally, all variables are provided as outputs.
