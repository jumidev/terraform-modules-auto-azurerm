# azurerm_palo_alto_next_generation_firewall_vhub_panorama

Manages a Palo Alto Next Generation Firewall VHub Panorama.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **var.location** | string | True | The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created. | 
| **var.panorama_base64_config** | string | True | The Base64 Encoded configuration value for connecting to the Panorama Configuration server. | 
| **var.network_profile** | block | True | A `network_profile` block. | 
| **var.destination_nat** | block | False | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | A `dns_settings` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **panorama_base64_config** | string  | - | 
| **network_profile** | block  | - | 
| **destination_nat** | block  | - | 
| **dns_settings** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Palo Alto Next Generation Firewall VHub Panorama. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_next_generation_firewall_vhub_panorama" 
}

inputs = {
   name = "name of palo_alto_next_generation_firewall_vhub_panorama" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   panorama_base64_config = "panorama_base64_config of palo_alto_next_generation_firewall_vhub_panorama" 
   network_profile = "network_profile of palo_alto_next_generation_firewall_vhub_panorama" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```