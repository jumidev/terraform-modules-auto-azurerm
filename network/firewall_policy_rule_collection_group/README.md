# azurerm_firewall_policy_rule_collection_group

Manages a Firewall Policy Rule Collection Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/firewall_policy_rule_collection_group" 
}

inputs = {
   name = "name of firewall_policy_rule_collection_group" 
   firewall_policy_id = "firewall_policy_id of firewall_policy_rule_collection_group" 
   priority = "priority of firewall_policy_rule_collection_group" 
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
| **var.name** | string | True | The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.firewall_policy_id** | string | True | The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.priority** | string | True | The priority of the Firewall Policy Rule Collection Group. The range is 100-65000. | 
| **var.application_rule_collection** | block | False | One or more `application_rule_collection` blocks. | | `application_rule_collection` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this application rule collection. ||
|   action (string): (REQUIRED) The action to take for the application rules in this collection. Possible values are 'Allow' and 'Deny'. ||
|   priority (string): (REQUIRED) The priority of the application rule collection. The range is '100' - '65000'. ||
|   rule (block): (REQUIRED) One or more 'application_rule' blocks. ||

| **var.nat_rule_collection** | block | False | One or more `nat_rule_collection` blocks. | | `nat_rule_collection` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this NAT rule collection. ||
|   action (string): (REQUIRED) The action to take for the NAT rules in this collection. Currently, the only possible value is 'Dnat'. ||
|   priority (string): (REQUIRED) The priority of the NAT rule collection. The range is '100' - '65000'. ||
|   rule (block): (REQUIRED) A 'nat_rule' block. ||

| **var.network_rule_collection** | block | False | One or more `network_rule_collection` blocks. | | `network_rule_collection` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this network rule collection. ||
|   action (string): (REQUIRED) The action to take for the network rules in this collection. Possible values are 'Allow' and 'Deny'. ||
|   priority (string): (REQUIRED) The priority of the network rule collection. The range is '100' - '65000'. ||
|   rule (block): (REQUIRED) One or more 'network_rule' blocks. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Firewall Policy Rule Collection Group. | 

Additionally, all variables are provided as outputs.
