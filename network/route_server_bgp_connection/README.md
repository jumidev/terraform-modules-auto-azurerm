# azurerm_route_server_bgp_connection

Manages a Bgp Connection for a Route Server

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **var.route_server_id** | string | True | -  |  -  | The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **var.peer_asn** | string | True | -  |  -  | The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **var.peer_ip** | string | True | -  |  -  | The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **route_server_id** | string  | - | 
| **peer_asn** | string  | - | 
| **peer_ip** | string  | - | 
| **id** | string  | The ID of the Route Server Bgp Connection. | 