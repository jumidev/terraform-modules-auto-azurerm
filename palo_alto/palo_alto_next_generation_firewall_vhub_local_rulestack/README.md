# azurerm_palo_alto_next_generation_firewall_vhub_local_rulestack

Manages a Palo Alto Next Generation Firewall VHub Local Rulestack.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **rulestack_id** | string  | - | 
| **network_profile** | block  | - | 
| **destination_nat** | block  | - | 
| **dns_settings** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

## Example minimal hclt

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