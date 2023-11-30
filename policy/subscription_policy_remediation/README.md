# azurerm_subscription_policy_remediation

Manages an Azure Subscription Policy Remediation.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "policy/subscription_policy_remediation" 
}

inputs = {
   name = "name of subscription_policy_remediation" 
   subscription_id = "subscription_id of subscription_policy_remediation" 
   policy_assignment_id = "policy_assignment_id of subscription_policy_remediation" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name of the Policy Remediation. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string |  The Subscription ID at which the Policy Remediation should be applied. Changing this forces a new resource to be created. | 
| **var.policy_assignment_id** | string |  The ID of the Policy Assignment that should be remediated. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.policy_definition_id** | string |  -  |  -  |  The unique ID for the policy definition within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition. | 
| **var.policy_definition_reference_id** | string |  -  |  -  |  The unique ID for the policy definition reference within the policy set definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition. | 
| **var.location_filters** | list |  -  |  -  |  A list of the resource locations that will be remediated. | 
| **var.resource_discovery_mode** | string |  `ExistingNonCompliant`  |  `ExistingNonCompliant`, `ReEvaluateCompliance`  |  The way that resources to remediate are discovered. Possible values are `ExistingNonCompliant`, `ReEvaluateCompliance`. Defaults to `ExistingNonCompliant`. | 
| **var.failure_percentage** | string |  -  |  -  |  A number between 0.0 to 1.0 representing the percentage failure threshold. The remediation will fail if the percentage of failed remediation operations (i.e. failed deployments) exceeds this threshold. | 
| **var.parallel_deployments** | string |  -  |  -  |  Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used. | 
| **var.resource_count** | int |  -  |  -  |  Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Policy Remediation. | 

Additionally, all variables are provided as outputs.
