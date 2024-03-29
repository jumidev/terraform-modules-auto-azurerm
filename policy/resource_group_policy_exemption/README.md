# azurerm_resource_group_policy_exemption

Manages a Resource Group Policy Exemption.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "policy/resource_group_policy_exemption"   
}

inputs = {
   name = "The name of the Policy Exemption"   
   resource_group_id = "The Resource Group ID where the Policy Exemption should be applied..."   
   exemption_category = "The category of this policy exemption"   
   policy_assignment_id = "The ID of the Policy Assignment to be exempted at the specified Scope..."   
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
| **resource_group_id** | string |  -  |  The Resource Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created. | 
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
| **metadata** | string | No  | The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Policy Exemption id. | 

Additionally, all variables are provided as outputs.
