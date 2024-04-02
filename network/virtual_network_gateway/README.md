# azurerm_virtual_network_gateway



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/virtual_network_gateway"   
}

inputs = {
   ip_configuration = "One or more (up to 3) `ip_configuration` blocks documented below..."   
   location = "${location}"   
   name = "The name of the Virtual Network Gateway"   
   resource_group_name = "${resource_group}"   
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
| **ip_configuration** | string |  One or more (up to 3) `ip_configuration` blocks documented below. An active-standby gateway requires exactly one `ip_configuration` block, an active-active gateway requires exactly two `ip_configuration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ip_configuration` blocks. | 
| **location** | string |  The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created. | 
| **name** | string |  The name of the Virtual Network Gateway. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **address_prefixes** | list | No  | A list of address prefixes for P2S VPN Client. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Virtual Network Gateway. | 
| **bgp_settings** | string | No  | A block of `bgp_settings`. | 
| **peering_addresses** | list | No  | A list of `peering_addresses` as defined below. | 
| **default_addresses** | list | No  | A list of peering address assigned to the BGP peer of the Virtual Network Gateway. | 
| **tunnel_ip_addresses** | list | No  | A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway. | 

Additionally, all variables are provided as outputs.
