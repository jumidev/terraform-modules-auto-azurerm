# azurerm_virtual_hub_connection



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_hub_connection"   
}
inputs = {
   name = "The Name which should be used for this Connection, which must be unique within t..."   
   # virtual_hub_id → set in component_inputs
   # remote_virtual_network_id → set in component_inputs
}
component_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string |  The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created. | 
| **remote_virtual_network_id** | string |  The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **internet_security_enabled** | bool |  `False`  |  Should Internet Security be enabled to secure internet traffic? Defaults to `false`. | 
| **routing** | [block](#routing-block-structure) |  -  |  A `routing` block. | 

### `propagated_route_table` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `labels` | string | No | - | The list of labels to assign to this route table. |
| `route_table_ids` | list | No | - | A list of Route Table IDs to associated with this Virtual Hub Connection. |

### `routing` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `associated_route_table_id` | string | No | - | The ID of the route table associated with this Virtual Hub connection. |
| `inbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes. |
| `outbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes. |
| `propagated_route_table` | [block](#propagated_route_table-block-structure) | No | - | A 'propagated_route_table' block. |
| `static_vnet_local_route_override_criteria` | string | No | Contains | The static VNet local route override criteria that is used to determine whether NVA in spoke VNet is bypassed for traffic with destination in spoke VNet. Possible values are 'Contains' and 'Equal'. Defaults to 'Contains'. Changing this forces a new resource to be created. |
| `static_vnet_route` | [block](#static_vnet_route-block-structure) | No | - | A 'static_vnet_route' block. |

### `static_vnet_route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name which should be used for this Static Route. |
| `address_prefixes` | list | No | - | A list of CIDR Ranges which should be used as Address Prefixes. |
| `next_hop_ip_address` | string | No | - | The IP Address which should be used for the Next Hop. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **next_hop_ip_address** | string | No  | The IP Address which should be used for the Next Hop. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Hub Connection. | 

Additionally, all variables are provided as outputs.
