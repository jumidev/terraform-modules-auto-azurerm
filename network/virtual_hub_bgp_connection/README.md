# azurerm_virtual_hub_bgp_connection

Manages a Bgp Connection for a Virtual Hub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_hub_bgp_connection"   
}

inputs = {
   name = "The name which should be used for this Virtual Hub Bgp Connection..."   
   # virtual_hub_id → set in component_inputs
   peer_asn = "The peer autonomous system number for the Virtual Hub Bgp Connection..."   
   peer_ip = "The peer IP address for the Virtual Hub Bgp Connection..."   
}

component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **peer_asn** | string |  The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **peer_ip** | string |  The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **virtual_network_connection_id** | string |  The ID of virtual network connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **virtual_network_connection_id** | string | No  | The ID of virtual network connection. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Hub Bgp Connection. | 

Additionally, all variables are provided as outputs.
