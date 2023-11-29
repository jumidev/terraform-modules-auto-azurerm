# azurerm_subscription_policy_exemption

Manages a Subscription Policy Exemption.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Policy Exemption. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string | True | -  |  -  | The Subscription ID where the Policy Exemption should be applied. Changing this forces a new resource to be created. | 
| **var.exemption_category** | string | True | -  |  `Waiver`, `Mitigated`  | The category of this policy exemption. Possible values are `Waiver` and `Mitigated`. | 
| **var.policy_assignment_id** | string | True | -  |  -  | The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | A description to use for this Policy Exemption. | 
| **var.display_name** | string | False | -  |  -  | A friendly display name to use for this Policy Exemption. | 
| **var.expires_on** | string | False | -  |  -  | The expiration date and time in UTC ISO 8601 format of this policy exemption. | 
| **var.policy_definition_reference_ids** | string | False | -  |  -  | The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition. | 
| **var.metadata** | string | False | -  |  -  | The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **subscription_id** | string  | - | 
| **exemption_category** | string  | - | 
| **policy_assignment_id** | string  | - | 
| **description** | string  | - | 
| **display_name** | string  | - | 
| **expires_on** | string  | - | 
| **policy_definition_reference_ids** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The Policy Exemption id. | 