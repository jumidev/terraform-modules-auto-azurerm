# azurerm_palo_alto_next_generation_firewall_virtual_network_panorama

Manages a Palo Alto Next Generation Firewall Virtual Network Panorama.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **network_profile** | block | True | -  |  -  | A `network_profile` block. | 
| **panorama_base64_config** | string | True | -  |  -  | The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **destination_nat** | block | False | -  |  -  | One or more `destination_nat` blocks. | 
| **dns_settings** | block | False | -  |  -  | A `dns_settings` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama. | 

