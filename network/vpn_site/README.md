# azurerm_vpn_site

Manages a VPN Site.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_site" 
}

inputs = {
   location = "${location}" 
   name = "name of vpn_site" 
   resource_group_name = "${resource_group}" 
   virtual_wan_id = "virtual_wan_id of vpn_site" 
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
| **var.location** | string  The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **var.name** | string  The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **var.virtual_wan_id** | string  The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.link** | block  One or more `link` blocks. | 
| **var.address_cidrs** | string  Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site. | 
| **var.device_model** | string  The model of the VPN device. | 
| **var.device_vendor** | string  The name of the VPN device vendor. | 
| **var.o365_policy** | block  An `o365_policy` block. | 
| **var.tags** | map  A mapping of tags which should be assigned to the VPN Site. | 

### `link` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `bgp` | block | No | - | A 'bgp' block. |
| `fqdn` | string | No | - | The FQDN of this VPN Site Link. |
| `ip_address` | string | No | - | The IP address of this VPN Site Link. |
| `provider_name` | string | No | - | The name of the physical link at the VPN Site. Example: 'ATT', 'Verizon'. |
| `speed_in_mbps` | int | No | 0 | The speed of the VPN device at the branch location in unit of mbps. Defaults to '0'. |

### `o365_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `traffic_category` | block | No | - | A 'traffic_category' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Site Link. | 
| **link** | block | No  | One or more `link` blocks. | 

Additionally, all variables are provided as outputs.
