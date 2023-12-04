# azurerm_subscription_policy_exemption

Manages a Subscription Policy Exemption.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/subscription_policy_exemption" 
}

inputs = {
   name = "name of subscription_policy_exemption" 
   # subscription_id → set in tfstate_inputs
   exemption_category = "exemption_category of subscription_policy_exemption" 
   policy_assignment_id = "policy_assignment_id of subscription_policy_exemption" 
}

tfstate_inputs = {
   subscription_id = "path/to/subscription_component:subscription_id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Policy Exemption. Changing this forces a new resource to be created. | 
| **subscription_id** | string |  -  |  The Subscription ID where the Policy Exemption should be applied. Changing this forces a new resource to be created. | 
| **exemption_category** | string |  `Waiver`, `Mitigated`  |  The category of this policy exemption. Possible values are `Waiver` and `Mitigated`. | 
| **policy_assignment_id** | string |  -  |  The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description to use for this Policy Exemption. | 
| **display_name** | string |  A friendly display name to use for this Policy Exemption. | 
| **expires_on** | string |  The expiration date and time in UTC ISO 8601 format of this policy exemption. | 
| **policy_definition_reference_ids** | string |  The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition. | 
| **metadata** | string |  The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Policy Exemption id. | 

Additionally, all variables are provided as outputs.
