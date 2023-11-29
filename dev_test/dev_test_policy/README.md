# azurerm_dev_test_policy

Manages a Policy within a Dev Test Policy Set.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount`, `UserOwnedLabVmCountInSubnet`  | Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created. | 
| **var.policy_set_name** | string | True | -  |  -  | Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | -  |  -  | Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **var.description** | string | False | -  |  -  | A description for the Policy. | 
| **var.evaluator_type** | string | True | -  |  -  | The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created. | 
| **var.threshold** | string | True | -  |  -  | The Threshold for this Policy. | 
| **var.fact_data** | string | False | -  |  -  | The Fact Data for this Policy. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **policy_set_name** | string  | - | 
| **lab_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **evaluator_type** | string  | - | 
| **threshold** | string  | - | 
| **fact_data** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Dev Test Policy. | 