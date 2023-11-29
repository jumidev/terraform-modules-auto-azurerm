# azurerm_palo_alto_next_generation_firewall_vhub_local_rulestack

Manages a Palo Alto Next Generation Firewall VHub Local Rulestack.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Next Generation Firewall VHub Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created. | 
| **rulestack_id** | string | True | -  |  -  | The ID of the Local Rulestack to be used for this Next Generation Firewall. | 
| **network_profile** | block | True | -  |  -  | A `network_profile` block. | 
| **destination_nat** | block | False | -  |  -  | One or more `destination_nat` blocks. | 
| **dns_settings** | block | False | -  |  -  | A `dns_settings` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Local Rulestack. | 

