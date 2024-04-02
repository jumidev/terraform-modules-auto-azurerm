# azurerm_route_server_bgp_connection



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/route_server_bgp_connection"   
}

inputs = {
   name = "The name which should be used for this Route Server Bgp Connection..."   
   # route_server_id → set in component_inputs
   peer_asn = "The peer autonomous system number for the Route Server Bgp Connection..."   
   peer_ip = "The peer ip address for the Route Server Bgp Connection..."   
}

component_inputs = {
   route_server_id = "path/to/route_server_component:id"   
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
| **name** | string |  The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **route_server_id** | string |  The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **peer_asn** | string |  The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **peer_ip** | string |  The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **peer_ip** | string | No  | The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Route Server Bgp Connection. | 

Additionally, all variables are provided as outputs.
