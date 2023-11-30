# azurerm_firewall_policy_rule_collection_group

Manages a Firewall Policy Rule Collection Group.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.firewall_policy_id** | string |  The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created. | 
| **var.priority** | string |  The priority of the Firewall Policy Rule Collection Group. The range is 100-65000. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.application_rule_collection** | [block](#application_rule_collection-block-structure) |  One or more `application_rule_collection` blocks. | 
| **var.nat_rule_collection** | [block](#nat_rule_collection-block-structure) |  One or more `nat_rule_collection` blocks. | 
| **var.network_rule_collection** | [block](#network_rule_collection-block-structure) |  One or more `network_rule_collection` blocks. | 

### `application_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the application rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the application rule collection. The range is '100' - '65000'. |
| `rule` | block | Yes | - | One or more 'application_rule' blocks. |

### `nat_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the NAT rules in this collection. Currently, the only possible value is 'Dnat'. |
| `priority` | string | Yes | - | The priority of the NAT rule collection. The range is '100' - '65000'. |
| `rule` | block | Yes | - | A 'nat_rule' block. |

### `network_rule_collection` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The action to take for the network rules in this collection. Possible values are 'Allow' and 'Deny'. |
| `priority` | string | Yes | - | The priority of the network rule collection. The range is '100' - '65000'. |
| `rule` | block | Yes | - | One or more 'network_rule' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Firewall Policy Rule Collection Group. | 

Additionally, all variables are provided as outputs.
