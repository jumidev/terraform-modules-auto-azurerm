# azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack

Manages a Palo Alto Next Generation Firewall Deployed in a Virtual Network and configured via a Local Rulestack.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_next_generation_firewall_virtual_network_local_rulestack" 
}

inputs = {
   name = "name of palo_alto_next_generation_firewall_virtual_network_local_rulestack" 
   network_profile = "network_profile of palo_alto_next_generation_firewall_virtual_network_local_rulestack" 
   resource_group_name = "${resource_group}" 
   rulestack_id = "rulestack_id of palo_alto_next_generation_firewall_virtual_network_local_rulestack" 
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
| **var.name** | string | True | The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created. | 
| **var.network_profile** | block | True | A `network_profile` block. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created. | 
| **var.rulestack_id** | string | True | The ID of the Local Rulestack which will be used to configure this Firewall Resource. | 
| **var.destination_nat** | block | False | One or more `destination_nat` blocks. | 
| **var.dns_settings** | block | False | A `dns_settings` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Local Rulestack. | 

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
| **id** | string | No  | The ID of the Palo Alto Next Generation Firewall Virtual Network Local Rulestack. | 

Additionally, all variables are provided as outputs.
