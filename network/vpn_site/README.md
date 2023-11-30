# azurerm_vpn_site

Manages a VPN Site.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **var.name** | string | True | The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **var.virtual_wan_id** | string | True | The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created. | 
| **var.link** | block | False | One or more `link` blocks. | 
| **var.address_cidrs** | string | False | Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site. | 
| **var.device_model** | string | False | The model of the VPN device. | 
| **var.device_vendor** | string | False | The name of the VPN device vendor. | 
| **var.o365_policy** | block | False | An `o365_policy` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the VPN Site. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **virtual_wan_id** | string  | - | 
| **link** | block  | - | 
| **address_cidrs** | string  | - | 
| **device_model** | string  | - | 
| **device_vendor** | string  | - | 
| **o365_policy** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the VPN Site Link. | 
| **link** | block  | One or more `link` blocks. | 

## Example minimal hclt

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