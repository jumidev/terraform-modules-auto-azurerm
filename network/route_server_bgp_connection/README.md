# azurerm_route_server_bgp_connection

Manages a Bgp Connection for a Route Server

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_server_bgp_connection" 
}

inputs = {
   name = "name of route_server_bgp_connection" 
   route_server_id = "route_server_id of route_server_bgp_connection" 
   peer_asn = "peer_asn of route_server_bgp_connection" 
   peer_ip = "peer_ip of route_server_bgp_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **var.route_server_id** | string | True | The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **var.peer_asn** | string | True | The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 
| **var.peer_ip** | string | True | The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Route Server Bgp Connection. | 

Additionally, all variables are provided as outputs.
