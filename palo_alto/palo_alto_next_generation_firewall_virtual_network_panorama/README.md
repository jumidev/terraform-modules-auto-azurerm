# azurerm_palo_alto_next_generation_firewall_virtual_network_panorama

Manages a Palo Alto Next Generation Firewall Virtual Network Panorama.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_next_generation_firewall_virtual_network_panorama" 
}

inputs = {
   location = "${location}" 
   name = "name of palo_alto_next_generation_firewall_virtual_network_panorama" 
   network_profile = {
      example_network_profile = {
         public_ip_address_ids = "TODO link to network.public_ip.id"   
         vnet_configuration = "..."   
      }
  
   }
 
   panorama_base64_config = "panorama_base64_config of palo_alto_next_generation_firewall_virtual_network_panorama" 
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
| **var.location** | string |  The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.name** | string |  The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 
| **var.network_profile** | [block](#network_profile-block-structure) |  A `network_profile` block. | 
| **var.panorama_base64_config** | string |  The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.destination_nat** | [block](#destination_nat-block-structure) |  One or more `destination_nat` blocks. | 
| **var.dns_settings** | [block](#dns_settings-block-structure) |  A `dns_settings` block. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama. | 

### `frontend_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port on which to receive traffic. |
| `public_ip_address_id` | string | Yes | - | The ID of the Public IP Address on which to receive traffic. |

### `destination_nat` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | The Protocol for this Destination NAT configuration. Possible values include 'TCP' and 'UDP'. |
| `backend_config` | [block](#destination_nat-block-structure) | No | - | A 'backend_config' block. |
| `frontend_config` | [block](#destination_nat-block-structure) | No | - | A 'frontend_config' block. |

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `public_ip_address_ids` | string | Yes | - | Specifies a list of Azure Public IP Address IDs. |
| `vnet_configuration` | [block](#network_profile-block-structure) | Yes | - | A 'vnet_configuration' block. |
| `egress_nat_ip_address_ids` | string | No | - | Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation. |

### `dns_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_servers` | string | No | - | Specifies a list of DNS servers to use. Conflicts with 'dns_settings.0.use_azure_dns'. |
| `use_azure_dns` | bool | No | False | Should the Firewall use Azure Supplied DNS servers. Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'. |

### `backend_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port number to send traffic to. |
| `public_ip_address` | string | Yes | - | The IP Address to send the traffic to. |

### `vnet_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `virtual_network_id` | string | Yes | - | The ID of the Virtual Network. |
| `trusted_subnet_id` | string | No | - | The ID of the Trust subnet. |
| `untrusted_subnet_id` | string | No | - | The ID of the UnTrust subnet. |



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
