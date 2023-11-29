# azurerm_resource_policy_assignment

Manages a Policy Assignment to a Resource.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **var.policy_definition_id** | string | True | -  |  -  | The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **var.resource_id** | string | True | -  |  -  | The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created. | 
| **var.description** | string | False | -  |  -  | A description which should be used for this Policy Assignment. | 
| **var.display_name** | string | False | -  |  -  | The Display Name for this Policy Assignment. | 
| **var.enforce** | bool | False | `True`  |  -  | Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.location** | string | False | -  |  -  | The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **var.metadata** | string | False | -  |  -  | A JSON mapping of any Metadata for this Policy. | 
| **var.non_compliance_message** | block | False | -  |  -  | One or more `non_compliance_message` blocks. | 
| **var.not_scopes** | string | False | -  |  -  | Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **var.parameters** | string | False | -  |  -  | A JSON mapping of any Parameters for this Policy. | 
| **var.overrides** | block | False | -  |  -  | One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **var.resource_selectors** | block | False | -  |  -  | One or more `resource_selectors` blocks to filter polices by resource properties. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **policy_definition_id** | string  | - | 
| **resource_id** | string  | - | 
| **description** | string  | - | 
| **display_name** | string  | - | 
| **enforce** | bool  | - | 
| **identity** | block  | - | 
| **location** | string  | - | 
| **metadata** | string  | - | 
| **non_compliance_message** | block  | - | 
| **not_scopes** | string  | - | 
| **parameters** | string  | - | 
| **overrides** | block  | - | 
| **resource_selectors** | block  | - | 
| **id** | string  | The ID of the Resource Policy Assignment. | 
| **principal_id** | string  | The Principal ID of the Policy Assignment for this Resource. | 
| **tenant_id** | string  | The Tenant ID of the Policy Assignment for this Resource. | 