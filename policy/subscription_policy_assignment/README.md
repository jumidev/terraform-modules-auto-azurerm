# azurerm_subscription_policy_assignment

Manages a Subscription Policy Assignment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/subscription_policy_assignment" 
}

inputs = {
   name = "name of subscription_policy_assignment" 
   policy_definition_id = "policy_definition_id of subscription_policy_assignment" 
   subscription_id = "subscription_id of subscription_policy_assignment" 
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
| **var.name** | string |  The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **var.policy_definition_id** | string |  The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **var.subscription_id** | string |  The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.description** | string |  -  |  A description which should be used for this Policy Assignment. | 
| **var.display_name** | string |  -  |  The Display Name for this Policy Assignment. | 
| **var.enforce** | bool |  `True`  |  Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **var.identity** | block |  -  |  An `identity` block. | 
| **var.location** | string |  -  |  The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **var.metadata** | string |  -  |  A JSON mapping of any Metadata for this Policy. | 
| **var.non_compliance_message** | block |  -  |  One or more `non_compliance_message` blocks. | 
| **var.not_scopes** | string |  -  |  Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **var.parameters** | string |  -  |  A JSON mapping of any Parameters for this Policy. | 
| **var.overrides** | block |  -  |  One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **var.resource_selectors** | block |  -  |  One or more `resource_selectors` blocks to filter polices by resource properties. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Type of Managed Identity which should be added to this Policy Definition. Possible values are 'SystemAssigned' or 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Managed Identity IDs which should be assigned to the Policy Definition. |

### `non_compliance_message` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The non-compliance message text. When assigning policy sets (initiatives), unless 'policy_definition_reference_id' is specified then this message will be the default for all policies. |
| `policy_definition_reference_id` | string | No | - | When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to. |

### `overrides` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | Specifies the value to override the policy property. Possible values for 'policyEffect' override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects). |
| `selectors` | block | No | - | One or more 'override_selector' block. |

### `resource_selectors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `selectors` | block | Yes | - | One or more 'resource_selector' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Subscription Policy Assignment. | 
| **principal_id** | string | No  | The Principal ID of the Policy Assignment for this Subscription. | 
| **tenant_id** | string | No  | The Tenant ID of the Policy Assignment for this Subscription. | 

Additionally, all variables are provided as outputs.
