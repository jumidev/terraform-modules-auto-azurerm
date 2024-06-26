# azurerm_vpn_site



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_site"   
}
inputs = {
   location = "${location}"   
   name = "The name which should be used for this VPN Site"   
   resource_group_name = "${resource_group}"   
   # virtual_wan_id → set in component_inputs
}
component_inputs = {
   virtual_wan_id = "path/to/virtual_wan_component:id"   
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
| **location** | string |  The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **name** | string |  The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **virtual_wan_id** | string |  The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **links** | [block](#link-block-structure) |  One or more `link` blocks. | 
| **address_cidrs** | list |  Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site. -> **NOTE:** The `address_cidrs` has to be set when the `link.bgp` isn't specified. | 
| **device_model** | string |  The model of the VPN device. | 
| **device_vendor** | string |  The name of the VPN device vendor. | 
| **o365_policy** | [block](#o365_policy-block-structure) |  An `o365_policy` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the VPN Site. | 

### `o365_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `traffic_category` | [block](#traffic_category-block-structure) | No | - | A 'traffic_category' block. |

### `bgp` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `asn` | string | Yes | - | The BGP speaker's ASN. |
| `peering_address` | string | Yes | - | The BGP peering IP address. |

### `link` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this VPN Site Link. |
| `bgp` | [block](#bgp-block-structure) | No | - | A 'bgp' block. -> **NOTE:** The 'link.bgp' has to be set when the 'address_cidrs' isn't specified. |
| `fqdn` | string | No | - | The FQDN of this VPN Site Link. |
| `ip_address` | string | No | - | The IP address of this VPN Site Link. -> **NOTE:** Either 'fqdn' or 'ip_address' should be specified. |
| `provider_name` | string | No | - | The name of the physical link at the VPN Site. Example: 'ATT', 'Verizon'. |
| `speed_in_mbps` | number | No | 0 | The speed of the VPN device at the branch location in unit of mbps. Defaults to '0'. |

### `traffic_category` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allow_endpoint_enabled` | bool | No | False | Is allow endpoint enabled? The 'Allow' endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to 'false'. |
| `default_endpoint_enabled` | bool | No | False | Is default endpoint enabled? The 'Default' endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to 'false'. |
| `optimize_endpoint_enabled` | bool | No | False | Is optimize endpoint enabled? The 'Optimize' endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **optimize_endpoint_enabled** | bool | No  | Is optimize endpoint enabled? The `Optimize` endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to `false`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the VPN Site Link. | 
| **link** | block | No  | One or more `link` blocks. | 

Additionally, all variables are provided as outputs.
