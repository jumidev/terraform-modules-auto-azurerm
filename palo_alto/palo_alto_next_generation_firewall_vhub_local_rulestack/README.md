# azurerm_palo_alto_next_generation_firewall_vhub_local_rulestack

Manages a Palo Alto Next Generation Firewall VHub Local Rulestack.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "palo_alto/palo_alto_next_generation_firewall_vhub_local_rulestack"   
}

inputs = {
   name = "The name which should be used for this Palo Alto Next Generation Firewall VHub L..."   
   resource_group_name = "${resource_group}"   
   rulestack_id = "The ID of the Local Rulestack to be used for this Next Generation Firewall..."   
   network_profile = {
      network_virtual_appliance_id = "..."      
      # public_ip_address_ids → set in tfstate_inputs
      # virtual_hub_id → set in tfstate_inputs
   }
   
}

tfstate_inputs = {
   network_profile.public_ip_address_ids = "path/to/public_ip_component:id"   
   network_profile.virtual_hub_id = "path/to/virtual_hub_component:id"   
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
| **name** | string |  The name which should be used for this Palo Alto Next Generation Firewall VHub Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **rulestack_id** | string |  The ID of the Local Rulestack to be used for this Next Generation Firewall. | 
| **network_profile** | [block](#network_profile-block-structure) |  A `network_profile` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **destination_nat** | [block](#destination_nat-block-structure) |  One or more `destination_nat` blocks. | 
| **dns_settings** | [block](#dns_settings-block-structure) |  A `dns_settings` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

### `destination_nat` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this NAT. |
| `protocol` | string | Yes | - | The protocol used for this Destination NAT. Possible values include 'TCP' and 'UDP'. |
| `backend_config` | [block](#backend_config-block-structure) | No | - | A 'backend_config' block. |
| `frontend_config` | [block](#frontend_config-block-structure) | No | - | A 'frontend_config' block. |

### `dns_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_servers` | string | No | - | Specifies a list of DNS servers to proxy. Conflicts with 'dns_settings.0.use_azure_dns'. |
| `use_azure_dns` | bool | No | False | Should Azure DNS servers be used? Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'. |

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `network_virtual_appliance_id` | string | Yes | - | The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. |
| `public_ip_address_ids` | string | Yes | - | Specifies a list of Public IP IDs to use for this Next Generation Firewall. |
| `virtual_hub_id` | string | Yes | - | The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. |
| `egress_nat_ip_address_ids` | string | No | - | Specifies a list of Public IP IDs to use for Egress NAT. |

### `frontend_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port on which traffic will be receiveed. |
| `public_ip_address_id` | string | Yes | - | The ID of the Public IP Address resource the traffic will be received on. |

### `backend_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port number to send traffic to. |
| `public_ip_address` | string | Yes | - | The Public IP Address to send the traffic to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

Additionally, all variables are provided as outputs.
