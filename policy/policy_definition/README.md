# azurerm_policy_definition

Manages a policy rule definition on a management group or your provider subscription.Policy definitions do not take effect until they are assigned to a scope using a Policy Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/policy_definition" 
}

inputs = {
   name = "name of policy_definition" 
   policy_type = "policy_type of policy_definition" 
   mode = "mode of policy_definition" 
   display_name = "display_name of policy_definition" 
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
| **name** | string |  -  |  The name of the policy definition. Changing this forces a new resource to be created. | 
| **policy_type** | string |  `BuiltIn`, `Custom`, `NotSpecified`, `Static`  |  The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created. | 
| **mode** | string |  `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data`, `Microsoft.Synapse.Data`  |  The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`. | 
| **display_name** | string |  -  |  The display name of the policy definition. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description of the policy definition. | 
| **management_group_id** | string |  The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created. | 
| **policy_rule** | string |  The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block. | 
| **metadata** | string |  The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition. | 
| **parameters** | string |  Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Policy Definition. | 
| **role_definition_ids** | list | No  | A list of role definition id extracted from `policy_rule` required for remediation. | 

Additionally, all variables are provided as outputs.
