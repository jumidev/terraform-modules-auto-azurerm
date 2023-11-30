# azurerm_palo_alto_next_generation_firewall_virtual_network_panorama

Manages a Palo Alto Next Generation Firewall Virtual Network Panorama.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_next_generation_firewall_virtual_network_panorama" 
}

inputs = {
   location = "${location}" 
   name = "name of palo_alto_next_generation_firewall_virtual_network_panorama" 
   network_profile = "network_profile of palo_alto_next_generation_firewall_virtual_network_panorama" 
   panorama_base64_config = "panorama_base64_config of palo_alto_next_generation_firewall_virtual_network_panorama" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.name** | string | True | The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.network_profile** | block | True | A `network_profile` block. | 
| **var.panorama_base64_config** | string | True | The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.destination_nat** | block | False | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | A `dns_settings` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama. | 

### `network_profile` block structure

>`public_ip_address_ids` (string): (REQUIRED) Specifies a list of Azure Public IP Address IDs.
>`vnet_configuration` (block): (REQUIRED) A 'vnet_configuration' block.
>`egress_nat_ip_address_ids` (string): Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.

### `destination_nat` block structure

>`name` (string): (REQUIRED) The name which should be used for this Destination NAT.
>`protocol` (string): (REQUIRED) The Protocol for this Destination NAT configuration. Possible values include 'TCP' and 'UDP'.
>`backend_config` (block): A 'backend_config' block.
>`frontend_config` (block): A 'frontend_config' block.

### `dns_settings` block structure

>`dns_servers` (string): Specifies a list of DNS servers to use. Conflicts with 'dns_settings.0.use_azure_dns'.
>`use_azure_dns` (bool): Should the Firewall use Azure Supplied DNS servers. Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Next Generation Firewall Virtual Network Panorama. | 
| **panorama** | block | No  | A `panorama` block. | 
| **device_group_name** | string | No  | The Device Group Name to which this Firewall Resource is registered. | 
| **host_name** | string | No  | The Host Name of this Firewall Resource. | 
| **name** | string | No  | The name of this Firewall Resource. | 
| **panorama_server_1** | string | No  | The name of the First Panorana server. | 
| **panorama_server_2** | string | No  | The name of the Second Panorana server. | 
| **template_name** | string | No  | The name of the Panorama Template applied to this Firewall Resource. | 
| **virtual_machine_ssh_key** | string | No  | The SSH Key to connect to the Firewall Resource. | 

Additionally, all variables are provided as outputs.
