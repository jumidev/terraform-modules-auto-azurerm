# azurerm_resource_policy_assignment



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "policy/resource_policy_assignment"   
}

inputs = {
   name = "The name which should be used for this Policy Assignment..."   
   # policy_definition_id → set in component_inputs
   # resource_id → set in component_inputs
}

component_inputs = {
   policy_definition_id = "path/to/policy_definition_component:id"   
   resource_id = "path/to/any_resource_component:id"   
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
| **name** | string |  The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **policy_definition_id** | string |  The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **resource_id** | string |  The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created. ~> To create a Policy Assignment at a Management Group use the `azurerm_management_group_policy_assignment` resource, for a Resource Group use the `azurerm_resource_group_policy_assignment` and for a Subscription use the `azurerm_subscription_policy_assignment` resource. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  A description which should be used for this Policy Assignment. | 
| **display_name** | string |  -  |  The Display Name for this Policy Assignment. | 
| **enforce** | bool |  `True`  |  Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. -> **Note:** The `location` field must also be specified when `identity` is specified. | 
| **location** | string |  -  |  The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **metadata** | string |  -  |  A JSON mapping of any Metadata for this Policy. | 
| **non_compliance_message** | [block](#non_compliance_message-block-structure) |  -  |  One or more `non_compliance_message` blocks. | 
| **not_scopes** | list |  -  |  Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **parameters** | string |  -  |  A JSON mapping of any Parameters for this Policy. | 
| **overrides** | [block](#overrides-block-structure) |  -  |  One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **resource_selectors** | [block](#resource_selectors-block-structure) |  -  |  One or more `resource_selectors` blocks to filter polices by resource properties. | 

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
| `type` | string | Yes | - | The Type of Managed Identity which should be added to this Policy Definition. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Managed Identity IDs which should be assigned to the Policy Definition. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned'. |

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

### `non_compliance_message` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | The non-compliance message text. When assigning policy sets (initiatives), unless 'policy_definition_reference_id' is specified then this message will be the default for all policies. |
| `policy_definition_reference_id` | string | No | - | When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **not_in** | string | No  | The list of not-allowed values for the specified kind. Cannot be used with `in`. Can contain up to 50 values. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Resource Policy Assignment. | 
| **principal_id** | string | No  | The Principal ID of the Policy Assignment for this Resource. | 
| **tenant_id** | string | No  | The Tenant ID of the Policy Assignment for this Resource. | 

Additionally, all variables are provided as outputs.
