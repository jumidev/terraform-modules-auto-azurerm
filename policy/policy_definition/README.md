# azurerm_policy_definition

Manages a policy rule definition on a management group or your provider subscription.Policy definitions do not take effect until they are assigned to a scope using a Policy Assignment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the policy definition. Changing this forces a new resource to be created. | 
| **policy_type** | string | True | -  |  `BuiltIn`, `Custom`, `NotSpecified`, `Static`  | The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created. | 
| **mode** | string | True | -  |  `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data`, `Microsoft.Synapse.Data`  | The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`. | 
| **display_name** | string | True | -  |  -  | The display name of the policy definition. | 
| **description** | string | False | -  |  -  | The description of the policy definition. | 
| **management_group_id** | string | False | -  |  -  | The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created. | 
| **policy_rule** | string | False | -  |  -  | The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block. | 
| **metadata** | string | False | -  |  -  | The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition. | 
| **parameters** | string | False | -  |  -  | Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. | 

