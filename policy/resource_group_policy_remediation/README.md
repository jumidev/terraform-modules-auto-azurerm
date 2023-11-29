# azurerm_resource_group_policy_remediation

Manages an Azure Resource Group Policy Remediation.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Policy Remediation. Changing this forces a new resource to be created. | 
| **resource_group_id** | string | True | -  |  -  | The Resource Group ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created. | 
| **policy_assignment_id** | string | True | -  |  -  | The ID of the Policy Assignment that should be remediated. | 
| **policy_definition_id** | string | False | -  |  -  | The unique ID for the policy definition within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition. | 
| **policy_definition_reference_id** | string | False | -  |  -  | The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition. | 
| **location_filters** | list | False | -  |  -  | A list of the resource locations that will be remediated. | 
| **resource_discovery_mode** | string | False | `ExistingNonCompliant`  |  `ExistingNonCompliant`, `ReEvaluateCompliance`  | The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`. | 
| **failure_percentage** | string | False | -  |  -  | A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold. | 
| **parallel_deployments** | string | False | -  |  -  | Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used. | 
| **resource_count** | int | False | -  |  -  | Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used. | 

