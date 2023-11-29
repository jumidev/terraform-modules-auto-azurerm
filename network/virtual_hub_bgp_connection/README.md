# azurerm_virtual_hub_bgp_connection

Manages a Bgp Connection for a Virtual Hub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **peer_asn** | string | True | -  |  -  | The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **peer_ip** | string | True | -  |  -  | The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **virtual_network_connection_id** | string | False | -  |  -  | The ID of virtual network connection. | 

