# azurerm_firewall_nat_rule_collection

Manages a NAT Rule Collection within an Azure Firewall.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/firewall_nat_rule_collection" 
}

inputs = {
   name = "name of firewall_nat_rule_collection" 
   azure_firewall_name = "azure_firewall_name of firewall_nat_rule_collection" 
   resource_group_name = "${resource_group}" 
   priority = "priority of firewall_nat_rule_collection" 
   action = "action of firewall_nat_rule_collection" 
   rule = {
      example_rule = {
         destination_addresses = "..."   
         destination_ports = "..."   
         protocols = "..."   
         translated_address = "..."   
         translated_port = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string |  -  |  Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **var.azure_firewall_name** | string |  -  |  Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **var.priority** | string |  `100`, `65000`  |  Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **var.action** | string |  `Dnat`, `Snat`  |  Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`. | 
| **var.rule** | [block](#rule-block-structure) |  -  |  One or more `rule` blocks. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | Specifies a description for the rule. |
| `destination_addresses` | list | Yes | - | A list of destination IP addresses and/or IP ranges. |
| `destination_ports` | list | Yes | - | A list of destination ports. |
| `protocols` | string | Yes | - | A list of protocols. Possible values are 'Any', 'ICMP', 'TCP' and 'UDP'. If 'action' is 'Dnat', protocols can only be 'TCP' and 'UDP'. |
| `source_addresses` | list | No | - | A list of source IP addresses and/or IP ranges. |
| `source_ip_groups` | list | No | - | A list of source IP Group IDs for the rule. |
| `translated_address` | string | Yes | - | The address of the service behind the Firewall. |
| `translated_port` | string | Yes | - | The port of the service behind the Firewall. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
