# azurerm_resource_group_policy_exemption

Manages a Resource Group Policy Exemption.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Policy Exemption. Changing this forces a new resource to be created. | 
| **resource_group_id** | string | True | -  |  -  | The Resource Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created. | 
| **exemption_category** | string | True | -  |  `Waiver`, `Mitigated`  | The category of this policy exemption. Possible values are `Waiver` and `Mitigated`. | 
| **policy_assignment_id** | string | True | -  |  -  | The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created. | 
| **description** | string | False | -  |  -  | A description to use for this Policy Exemption. | 
| **display_name** | string | False | -  |  -  | A friendly display name to use for this Policy Exemption. | 
| **expires_on** | string | False | -  |  -  | The expiration date and time in UTC ISO 8601 format of this policy exemption. | 
| **policy_definition_reference_ids** | string | False | -  |  -  | The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition. | 
| **metadata** | string | False | -  |  -  | The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. | 

