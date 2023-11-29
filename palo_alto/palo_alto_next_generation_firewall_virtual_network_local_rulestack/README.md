# azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack

Manages a Palo Alto Next Generation Firewall Deployed in a Virtual Network and configured via a Local Rulestack.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created. | 
| **var.network_profile** | block | True | A `network_profile` block. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created. | 
| **var.rulestack_id** | string | True | The ID of the Local Rulestack which will be used to configure this Firewall Resource. | 
| **var.destination_nat** | block | False | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | A `dns_settings` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Local Rulestack. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **network_profile** | block  | - | 
| **resource_group_name** | string  | - | 
| **rulestack_id** | string  | - | 
| **destination_nat** | block  | - | 
| **dns_settings** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Palo Alto Next Generation Firewall Virtual Network Local Rulestack. | 