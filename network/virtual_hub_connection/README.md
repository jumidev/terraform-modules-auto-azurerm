# azurerm_virtual_hub_connection

Manages a Connection for a Virtual Hub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/virtual_hub_connection" 
}

inputs = {
   name = "name of virtual_hub_connection" 
   virtual_hub_id = "virtual_hub_id of virtual_hub_connection" 
   remote_virtual_network_id = "remote_virtual_network_id of virtual_hub_connection" 
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
| **var.name** | string | True | -  |  The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | -  |  The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created. | 
| **var.remote_virtual_network_id** | string | True | -  |  The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created. | 
| **var.internet_security_enabled** | bool | False | `False`  |  Should Internet Security be enabled to secure internet traffic? Defaults to `false`. | 
| **var.routing** | block | False | -  |  A `routing` block. | 

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `associated_route_table_id` | string | No | - | The ID of the route table associated with this Virtual Hub connection. |
| `inbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes. |
| `outbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes. |
| `propagated_route_table` | block | No | - | A 'propagated_route_table' block. |
| `static_vnet_local_route_override_criteria` | string | No | Contains | The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet. Possible values are 'Contains' and 'Equal'. Defaults to 'Contains'. Changing this forces a new resource to be created. |
| `static_vnet_route` | block | No | - | A 'static_vnet_route' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Hub Connection. | 

Additionally, all variables are provided as outputs.
