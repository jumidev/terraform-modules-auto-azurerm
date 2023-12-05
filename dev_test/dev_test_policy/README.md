# azurerm_dev_test_policy

Manages a Policy within a Dev Test Policy Set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dev_test/dev_test_policy"   
}

inputs = {
   name = "Specifies the name of the Dev Test Policy"   
   policy_set_name = "Specifies the name of the Policy Set within the Dev Test Lab where this policy s..."   
   lab_name = "Specifies the name of the Dev Test Lab in which the Policy should be created..."   
   resource_group_name = "${resource_group}"   
   evaluator_type = "The Evaluation Type used for this Policy"   
   threshold = "The Threshold for this Policy"   
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
| **name** | string |  `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount`, `UserOwnedLabVmCountInSubnet`  |  Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created. | 
| **policy_set_name** | string |  -  |  Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created. | 
| **lab_name** | string |  -  |  Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created. | 
| **evaluator_type** | string |  -  |  The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created. | 
| **threshold** | string |  -  |  The Threshold for this Policy. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description for the Policy. | 
| **fact_data** | string |  The Fact Data for this Policy. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Test Policy. | 

Additionally, all variables are provided as outputs.
