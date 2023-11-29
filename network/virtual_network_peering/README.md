# azurerm_virtual_network_peering

Manages a virtual network peering which allows resources to access otherresources in the linked virtual network.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the virtual network peering. Changing this forces a new resource to be created. | 
| **virtual_network_name** | string | True | -  |  -  | The name of the virtual network. Changing this forces a new resource to be created. | 
| **remote_virtual_network_id** | string | True | -  |  -  | The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created. | 
| **allow_virtual_network_access** | bool | False | `True`  |  -  | Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to `true`. | 
| **allow_forwarded_traffic** | bool | False | `False`  |  -  | Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`. | 
| **allow_gateway_transit** | bool | False | `False`  |  -  | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to `false`. | 
| **use_remote_gateways** | bool | False | `False`  |  -  | Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`. | 
| **triggers** | string | False | -  |  -  | A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See [the trigger example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering#example-usage-triggers) for an example on how to set it up. | 

