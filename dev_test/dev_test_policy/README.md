# azurerm_dev_test_policy

Manages a Policy within a Dev Test Policy Set.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_policy" 
}

inputs = {
   name = "name of dev_test_policy" 
   policy_set_name = "policy_set_name of dev_test_policy" 
   lab_name = "lab_name of dev_test_policy" 
   resource_group_name = "${resource_group}" 
   evaluator_type = "evaluator_type of dev_test_policy" 
   threshold = "threshold of dev_test_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount`, `UserOwnedLabVmCountInSubnet`  |  Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created. | 
| **var.policy_set_name** | string | True | -  |  Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | -  |  Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  A description for the Policy. | 
| **var.evaluator_type** | string | True | -  |  The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created. | 
| **var.threshold** | string | True | -  |  The Threshold for this Policy. | 
| **var.fact_data** | string | False | -  |  The Fact Data for this Policy. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Test Policy. | 

Additionally, all variables are provided as outputs.
