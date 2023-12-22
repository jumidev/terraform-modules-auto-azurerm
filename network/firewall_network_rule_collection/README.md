# azurerm_firewall_network_rule_collection

Manages a Network Rule Collection within an Azure Firewall.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/firewall_network_rule_collection"   
}

inputs = {
   name = "Specifies the name of the Network Rule Collection which must be unique within th..."   
   # azure_firewall_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   priority = "Specifies the priority of the rule collection"   
   action = "Specifies the action the rule will apply to matching traffic..."   
   rule = {
      this_rule = {
         destination_ports = "..."         
         protocols = "Possible values: Any | ICMP | TCP | UDP"         
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
| **name** | string |  -  |  Specifies the name of the Network Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **azure_firewall_name** | string |  -  |  Specifies the name of the Firewall in which the Network Rule Collection should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **priority** | number |  `100`, `65000`  |  Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **action** | string |  `Allow`, `Deny`  |  Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`. | 
| **rule** | [block](#rule-block-structure) |  -  |  One or more `rule` blocks. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the rule. |
| `description` | string | No | - | Specifies a description for the rule. |
| `source_addresses` | list | No | - | A list of source IP addresses and/or IP ranges. |
| `source_ip_groups` | list | No | - | A list of IP Group IDs for the rule. |
| `destination_addresses` | list | No | - | Either a list of destination IP addresses and/or IP ranges, or a list of destination [Service Tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags). |
| `destination_ip_groups` | list | No | - | A list of destination IP Group IDs for the rule. |
| `destination_fqdns` | list | No | - | A list of destination FQDNS for the rule. |
| `destination_ports` | list | Yes | - | A list of destination ports. |
| `protocols` | list | Yes | - | A list of protocols. Possible values are 'Any', 'ICMP', 'TCP' and 'UDP'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
