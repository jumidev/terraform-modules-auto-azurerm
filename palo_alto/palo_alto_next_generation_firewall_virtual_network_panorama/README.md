# azurerm_palo_alto_next_generation_firewall_virtual_network_panorama

Manages a Palo Alto Next Generation Firewall Virtual Network Panorama.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.network_profile** | block | True | -  |  -  | A `network_profile` block. | 
| **var.panorama_base64_config** | string | True | -  |  -  | The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.destination_nat** | block | False | -  |  -  | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | -  |  -  | A `dns_settings` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **network_profile** | block  | - | 
| **panorama_base64_config** | string  | - | 
| **resource_group_name** | string  | - | 
| **destination_nat** | block  | - | 
| **dns_settings** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Palo Alto Next Generation Firewall Virtual Network Panorama. | 
| **panorama** | block  | A `panorama` block. | 
| **device_group_name** | string  | The Device Group Name to which this Firewall Resource is registered. | 
| **host_name** | string  | The Host Name of this Firewall Resource. | 
| **name** | string  | The name of this Firewall Resource. | 
| **panorama_server_1** | string  | The name of the First Panorana server. | 
| **panorama_server_2** | string  | The name of the Second Panorana server. | 
| **template_name** | string  | The name of the Panorama Template applied to this Firewall Resource. | 
| **virtual_machine_ssh_key** | string  | The SSH Key to connect to the Firewall Resource. | 