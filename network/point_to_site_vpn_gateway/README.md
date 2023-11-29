# azurerm_point_to_site_vpn_gateway

Manages a Point-to-Site VPN Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **connection_configuration** | block | True | -  |  -  | A `connection_configuration` block. | 
| **scale_unit** | string | True | -  |  -  | The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway. | 
| **virtual_hub_id** | string | True | -  |  -  | The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created. | 
| **vpn_server_configuration_id** | string | True | -  |  -  | The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created. | 
| **dns_servers** | list | False | -  |  -  | A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway. | 
| **routing_preference_internet_enabled** | bool | False | `False`  |  -  | Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Point-to-Site VPN Gateway. | 

