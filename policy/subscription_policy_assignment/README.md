# azurerm_subscription_policy_assignment

Manages a Subscription Policy Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "policy/subscription_policy_assignment"   
}

inputs = {
   name = "The name which should be used for this Policy Assignment..."   
   # policy_definition_id → set in tfstate_inputs
   # subscription_id → set in tfstate_inputs
}

tfstate_inputs = {
   policy_definition_id = "path/to/policy_definition_component:id"   
   subscription_id = "path/to/subscription_component:subscription_id"   
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
| **name** | string |  The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **policy_definition_id** | string |  The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **subscription_id** | string |  The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  A description which should be used for this Policy Assignment. | 
| **display_name** | string |  -  |  The Display Name for this Policy Assignment. | 
| **enforce** | bool |  `True`  |  Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **location** | string |  -  |  The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **metadata** | string |  -  |  A JSON mapping of any Metadata for this Policy. | 
| **non_compliance_message** | [block](#non_compliance_message-block-structure) |  -  |  One or more `non_compliance_message` blocks. | 
| **not_scopes** | string |  -  |  Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **parameters** | string |  -  |  A JSON mapping of any Parameters for this Policy. | 
| **overrides** | [block](#overrides-block-structure) |  -  |  One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **resource_selectors** | [block](#resource_selectors-block-structure) |  -  |  One or more `resource_selectors` blocks to filter polices by resource properties. | 

### `non_compliance_message` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The non-compliance message text. When assigning policy sets (initiatives), unless 'policy_definition_reference_id' is specified then this message will be the default for all policies. |
| `policy_definition_reference_id` | string | No | - | When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to. |

### `resource_selectors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | Specifies a name for the resource selector. |
| `selectors` | [block](#resource_selector-block-structure) | Yes | - | One or more 'resource_selector' block. |

### `override_selector` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `not_in` | string | No | - | Specify the list of policy reference id values to filter out. Cannot be used with 'in'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Type of Managed Identity which should be added to this Policy Definition. Possible values are 'SystemAssigned' or 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Managed Identity IDs which should be assigned to the Policy Definition. |

### `overrides` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | Specifies the value to override the policy property. Possible values for 'policyEffect' override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects). |
| `selectors` | [block](#override_selector-block-structure) | No | - | One or more 'override_selector' block. |

### `resource_selector` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `kind` | string | Yes | - | Specifies which characteristic will narrow down the set of evaluated resources. Possible values are 'resourceLocation', 'resourceType' and 'resourceWithoutLocation'. |
| `not_in` | string | No | - | The list of not-allowed values for the specified kind. Cannot be used with 'in'. Can contain up to 50 values. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Subscription Policy Assignment. | 
| **principal_id** | string | No  | The Principal ID of the Policy Assignment for this Subscription. | 
| **tenant_id** | string | No  | The Tenant ID of the Policy Assignment for this Subscription. | 

Additionally, all variables are provided as outputs.
