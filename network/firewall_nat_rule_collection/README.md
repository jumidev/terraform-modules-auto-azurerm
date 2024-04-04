# azurerm_firewall_nat_rule_collection



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/firewall_nat_rule_collection"   
}
inputs = {
   name = "Specifies the name of the NAT Rule Collection which must be unique within the Fi..."   
   # azure_firewall_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   priority = "Specifies the priority of the rule collection"   
   action = "Specifies the action the rule will apply to matching traffic..."   
   rules = {
      item_1 = {
         description = "..."         
         destination_addresses = "..."         
         destination_ports = "..."         
         protocols = "Any | ICMP | TCP | UDP"         
         source_addresses = "..."         
         source_ip_groups = "..."         
         translated_address = "..."         
         translated_port = "..."         
      }      
      item_2 = {
         ...
      }      
   }   
}
component_inputs = {
   azure_firewall_name = "path/to/firewall_component:name"   
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
| **name** | string |  -  |  Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **azure_firewall_name** | string |  -  |  Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **priority** | number |  `100`, `65000`  |  Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **action** | string |  `Dnat`, `Snat`  |  Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`. | 
| **rules** | [block](#rule-block-structure) |  -  |  One or more `rule` blocks. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the rule. |
| `description` | string | No | - | Specifies a description for the rule. |
| `destination_addresses` | list | Yes | - | A list of destination IP addresses and/or IP ranges. |
| `destination_ports` | list | Yes | - | A list of destination ports. |
| `protocols` | list | Yes | - | A list of protocols. Possible values are 'Any', 'ICMP', 'TCP' and 'UDP'. If 'action' is 'Dnat', protocols can only be 'TCP' and 'UDP'. |
| `source_addresses` | list | No | - | A list of source IP addresses and/or IP ranges. |
| `source_ip_groups` | list | No | - | A list of source IP Group IDs for the rule. -> **NOTE** At least one of 'source_addresses' and 'source_ip_groups' must be specified for a rule. |
| `translated_address` | string | Yes | - | The address of the service behind the Firewall. |
| `translated_port` | string | Yes | - | The port of the service behind the Firewall. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
