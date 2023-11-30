# azurerm_resource_policy_assignment

Manages a Policy Assignment to a Resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/resource_policy_assignment" 
}

inputs = {
   name = "name of resource_policy_assignment" 
   policy_definition_id = "policy_definition_id of resource_policy_assignment" 
   resource_id = "resource_id of resource_policy_assignment" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **var.policy_definition_id** | string | True | -  |  The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **var.resource_id** | string | True | -  |  The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created. | 
| **var.description** | string | False | -  |  A description which should be used for this Policy Assignment. | 
| **var.display_name** | string | False | -  |  The Display Name for this Policy Assignment. | 
| **var.enforce** | bool | False | `True`  |  Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.location** | string | False | -  |  The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **var.metadata** | string | False | -  |  A JSON mapping of any Metadata for this Policy. | 
| **var.non_compliance_message** | block | False | -  |  One or more `non_compliance_message` blocks. | 
| **var.not_scopes** | string | False | -  |  Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **var.parameters** | string | False | -  |  A JSON mapping of any Parameters for this Policy. | 
| **var.overrides** | block | False | -  |  One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **var.resource_selectors** | block | False | -  |  One or more `resource_selectors` blocks to filter polices by resource properties. | 

### `identity` block structure

> `type` (string): (REQUIRED) The Type of Managed Identity which should be added to this Policy Definition. Possible values are 'SystemAssigned' and 'UserAssigned'.
> `identity_ids` (list): A list of User Managed Identity IDs which should be assigned to the Policy Definition.

### `non_compliance_message` block structure

> `content` (string): (REQUIRED) The non-compliance message text. When assigning policy sets (initiatives), unless 'policy_definition_reference_id' is specified then this message will be the default for all policies.
> `policy_definition_reference_id` (string): When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.

### `overrides` block structure

> `value` (string): (REQUIRED) Specifies the value to override the policy property. Possible values for 'policyEffect' override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
> `selectors` (block): One or more 'override_selector' block.

### `resource_selectors` block structure

> `name` (string): Specifies a name for the resource selector.
> `selectors` (block): (REQUIRED) One or more 'resource_selector' block.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Policy Assignment. | 
| **principal_id** | string | No  | The Principal ID of the Policy Assignment for this Resource. | 
| **tenant_id** | string | No  | The Tenant ID of the Policy Assignment for this Resource. | 

Additionally, all variables are provided as outputs.
