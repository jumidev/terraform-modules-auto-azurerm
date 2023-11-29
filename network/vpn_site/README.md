# azurerm_vpn_site

Manages a VPN Site.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created. | 
| **virtual_wan_id** | string | True | -  |  -  | The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created. | 
| **link** | block | False | -  |  -  | One or more `link` blocks. | 
| **address_cidrs** | string | False | -  |  -  | Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site. | 
| **device_model** | string | False | -  |  -  | The model of the VPN device. | 
| **device_vendor** | string | False | -  |  -  | The name of the VPN device vendor. | 
| **o365_policy** | block | False | -  |  -  | An `o365_policy` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the VPN Site. | 

