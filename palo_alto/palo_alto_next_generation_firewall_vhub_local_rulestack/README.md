# azurerm_palo_alto_next_generation_firewall_vhub_local_rulestack

Manages a Palo Alto Next Generation Firewall VHub Local Rulestack.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_next_generation_firewall_vhub_local_rulestack" 
}

inputs = {
   name = "name of palo_alto_next_generation_firewall_vhub_local_rulestack" 
   resource_group_name = "${resource_group}" 
   rulestack_id = "rulestack_id of palo_alto_next_generation_firewall_vhub_local_rulestack" 
   network_profile = "network_profile of palo_alto_next_generation_firewall_vhub_local_rulestack" 
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
| **var.name** | string | True | The name which should be used for this Palo Alto Next Generation Firewall VHub Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **var.rulestack_id** | string | True | The ID of the Local Rulestack to be used for this Next Generation Firewall. | 
| **var.network_profile** | block | True | A `network_profile` block. | 
| **var.destination_nat** | block | False | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | A `dns_settings` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `network_virtual_appliance_id` | string | Yes | - | The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. |
| `public_ip_address_ids` | string | Yes | - | Specifies a list of Public IP IDs to use for this Next Generation Firewall. |
| `virtual_hub_id` | string | Yes | - | The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. |
| `egress_nat_ip_address_ids` | string | No | - | Specifies a list of Public IP IDs to use for Egress NAT. |

### `destination_nat` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this NAT. |
| `protocol` | string | Yes | - | The protocol used for this Destination NAT. Possible values include 'TCP' and 'UDP'. |
| `backend_config` | block | No | - | A 'backend_config' block. |
| `frontend_config` | block | No | - | A 'frontend_config' block. |

### `dns_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_servers` | string | No | - | Specifies a list of DNS servers to proxy. Conflicts with 'dns_settings.0.use_azure_dns'. |
| `use_azure_dns` | bool | No | False | Should Azure DNS servers be used? Conflicts with 'dns_settings.0.dns_servers'. Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

Additionally, all variables are provided as outputs.
