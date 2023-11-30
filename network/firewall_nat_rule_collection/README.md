# azurerm_firewall_nat_rule_collection

Manages a NAT Rule Collection within an Azure Firewall.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **var.azure_firewall_name** | string | True | -  |  Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **var.priority** | string | True | `100`, `65000`  |  Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **var.action** | string | True | `Dnat`, `Snat`  |  Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`. | 
| **var.rule** | block | True | -  |  One or more `rule` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **azure_firewall_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **priority** | string  | - | 
| **action** | string  | - | 
| **rule** | block  | - | 

## Example minimal hclt

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
   rule = "rule of firewall_nat_rule_collection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```