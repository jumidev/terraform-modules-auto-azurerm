# azurerm_palo_alto_next_generation_firewall_vhub_panorama

Manages a Palo Alto Next Generation Firewall VHub Panorama.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **panorama_base64_config** | string | True | -  |  -  | The Base64 Encoded configuration value for connecting to the Panorama Configuration server. | 
| **network_profile** | block | True | -  |  -  | A `network_profile` block. | 
| **destination_nat** | block | False | -  |  -  | One or more `destination_nat` blocks. | 
| **dns_settings** | block | False | -  |  -  | A `dns_settings` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama. | 

