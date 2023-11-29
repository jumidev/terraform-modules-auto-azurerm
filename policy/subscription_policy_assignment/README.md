# azurerm_subscription_policy_assignment

Manages a Subscription Policy Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length. | 
| **policy_definition_id** | string | True | -  |  -  | The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created. | 
| **subscription_id** | string | True | -  |  -  | The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created. | 
| **description** | string | False | -  |  -  | A description which should be used for this Policy Assignment. | 
| **display_name** | string | False | -  |  -  | The Display Name for this Policy Assignment. | 
| **enforce** | bool | False | `True`  |  -  | Specifies if this Policy should be enforced or not? Defaults to `true`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **location** | string | False | -  |  -  | The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created. | 
| **metadata** | string | False | -  |  -  | A JSON mapping of any Metadata for this Policy. | 
| **non_compliance_message** | block | False | -  |  -  | One or more `non_compliance_message` blocks. | 
| **not_scopes** | string | False | -  |  -  | Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy. | 
| **parameters** | string | False | -  |  -  | A JSON mapping of any Parameters for this Policy. | 
| **overrides** | block | False | -  |  -  | One or more `overrides` blocks. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview) | 
| **resource_selectors** | block | False | -  |  -  | One or more `resource_selectors` blocks to filter polices by resource properties. | 

