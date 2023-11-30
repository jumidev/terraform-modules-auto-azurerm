# azurerm_dev_test_lab

Manages a Dev Test Lab.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_lab" 
}

inputs = {
   name = "name of dev_test_lab" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string  Specifies the name of the Dev Test Lab. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group under which the Dev Test Lab resource has to be created. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the supported Azure location where the Dev Test Lab should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.storage_type** | string  `Premium`  |  `Standard`, `Premium`  |  The type of storage used by the Dev Test Lab. Possible values are `Standard` and `Premium`. Defaults to `Premium`. | 
| **var.tags** | map  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Test Lab. | 
| **artifacts_storage_account_id** | string | No  | The ID of the Storage Account used for Artifact Storage. | 
| **default_storage_account_id** | string | No  | The ID of the Default Storage Account for this Dev Test Lab. | 
| **default_premium_storage_account_id** | string | No  | The ID of the Default Premium Storage Account for this Dev Test Lab. | 
| **key_vault_id** | string | No  | The ID of the Key used for this Dev Test Lab. | 
| **premium_data_disk_storage_account_id** | string | No  | The ID of the Storage Account used for Storage of Premium Data Disk. | 
| **unique_identifier** | string | No  | The unique immutable identifier of the Dev Test Lab. | 

Additionally, all variables are provided as outputs.
