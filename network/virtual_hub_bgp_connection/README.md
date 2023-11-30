# azurerm_virtual_hub_bgp_connection

Manages a Bgp Connection for a Virtual Hub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_bgp_connection" 
}

inputs = {
   name = "name of virtual_hub_bgp_connection" 
   virtual_hub_id = "virtual_hub_id of virtual_hub_bgp_connection" 
   peer_asn = "peer_asn of virtual_hub_bgp_connection" 
   peer_ip = "peer_ip of virtual_hub_bgp_connection" 
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
| **var.name** | string |  The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string |  The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created. | 
| **var.peer_asn** | string |  The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 
| **var.peer_ip** | string |  The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.virtual_network_connection_id** | string |  The ID of virtual network connection. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Bgp Connection. | 

Additionally, all variables are provided as outputs.
