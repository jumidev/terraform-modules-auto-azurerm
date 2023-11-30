# azurerm_resource_policy_exemption

Manages a Resource Policy Exemption.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/resource_policy_exemption" 
}

inputs = {
   name = "name of resource_policy_exemption" 
   resource_id = "resource_id of resource_policy_exemption" 
   exemption_category = "exemption_category of resource_policy_exemption" 
   policy_assignment_id = "policy_assignment_id of resource_policy_exemption" 
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
| **var.name** | string |  -  |  The name of the Policy Exemption. Changing this forces a new resource to be created. | 
| **var.resource_id** | string |  -  |  The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created. | 
| **var.exemption_category** | string |  `Waiver`, `Mitigated`  |  The category of this policy exemption. Possible values are `Waiver` and `Mitigated`. | 
| **var.policy_assignment_id** | string |  -  |  The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string |  A description to use for this Policy Exemption. | 
| **var.display_name** | string |  A friendly display name to use for this Policy Exemption. | 
| **var.expires_on** | string |  The expiration date and time in UTC ISO 8601 format of this policy exemption. | 
| **var.policy_definition_reference_ids** | string |  The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition. | 
| **var.metadata** | string |  The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Policy Exemption id. | 

Additionally, all variables are provided as outputs.
