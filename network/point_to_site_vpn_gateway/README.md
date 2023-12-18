# azurerm_point_to_site_vpn_gateway

Manages a Point-to-Site VPN Gateway.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/point_to_site_vpn_gateway"   
}

inputs = {
   name = "Specifies the name of the Point-to-Site VPN Gateway..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   connection_configuration = {
      name = "..."      
      vpn_client_address_pool = "..."      
   }
   
   scale_unit = "The [Scale Unit](https://docs"   
   # virtual_hub_id → set in tfstate_inputs
   # vpn_server_configuration_id → set in tfstate_inputs
}

tfstate_inputs = {
   virtual_hub_id = "path/to/virtual_hub_component:id"   
   vpn_server_configuration_id = "path/to/vpn_server_configuration_component:id"   
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
| **name** | string |  Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **connection_configuration** | [block](#connection_configuration-block-structure) |  A `connection_configuration` block. | 
| **scale_unit** | string |  The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway. | 
| **virtual_hub_id** | string |  The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created. | 
| **vpn_server_configuration_id** | string |  The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **dns_servers** | list |  -  |  A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway. | 
| **routing_preference_internet_enabled** | bool |  `False`  |  Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the Point-to-Site VPN Gateway. | 

### `vpn_client_address_pool` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address_prefixes` | list | Yes | - | A list of CIDR Ranges which should be used as Address Prefixes. |

### `propagated_route_table` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ids` | string | Yes | - | The list of Virtual Hub Route Table resource id which the routes will be propagated to. |
| `labels` | string | No | - | The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to. |

### `connection_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name which should be used for this Connection Configuration. |
| `vpn_client_address_pool` | [block](#vpn_client_address_pool-block-structure) | Yes | - | A 'vpn_client_address_pool' block. |
| `route` | [block](#route-block-structure) | No | - | A 'route' block. |
| `internet_security_enabled` | bool | No | False | Should Internet Security be enabled to secure internet traffic? Changing this forces a new resource to be created. Defaults to 'false'. |

### `route` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `associated_route_table_id` | string | Yes | - | The Virtual Hub Route Table resource id associated with this Routing Configuration. |
| `inbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes. |
| `outbound_route_map_id` | string | No | - | The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes. |
| `propagated_route_table` | [block](#propagated_route_table-block-structure) | No | - | A 'propagated_route_table' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Point-to-Site VPN Gateway. | 

Additionally, all variables are provided as outputs.
