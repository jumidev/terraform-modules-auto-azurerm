# azurerm_point_to_site_vpn_gateway

Manages a Point-to-Site VPN Gateway.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/point_to_site_vpn_gateway" 
}

inputs = {
   name = "name of point_to_site_vpn_gateway" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   connection_configuration = "connection_configuration of point_to_site_vpn_gateway" 
   scale_unit = "scale_unit of point_to_site_vpn_gateway" 
   virtual_hub_id = "virtual_hub_id of point_to_site_vpn_gateway" 
   vpn_server_configuration_id = "vpn_server_configuration_id of point_to_site_vpn_gateway" 
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
| **var.name** | string | True | -  |  Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.connection_configuration** | block | True | -  |  A `connection_configuration` block. | 
| **var.scale_unit** | string | True | -  |  The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway. | 
| **var.virtual_hub_id** | string | True | -  |  The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created. | 
| **var.vpn_server_configuration_id** | string | True | -  |  The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created. | 
| **var.dns_servers** | list | False | -  |  A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway. | 
| **var.routing_preference_internet_enabled** | bool | False | `False`  |  Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Point-to-Site VPN Gateway. | 

### `connection_configuration` block structure

> `name` (string): (REQUIRED) The Name which should be used for this Connection Configuration.\
> `vpn_client_address_pool` (block): (REQUIRED) A 'vpn_client_address_pool' block.\
> `route` (block): A 'route' block.\
> `internet_security_enabled` (bool): Should Internet Security be enabled to secure internet traffic? Changing this forces a new resource to be created. Defaults to 'false'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Point-to-Site VPN Gateway. | 

Additionally, all variables are provided as outputs.
