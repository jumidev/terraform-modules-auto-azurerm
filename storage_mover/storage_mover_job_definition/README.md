# azurerm_storage_mover_job_definition

Manages a Storage Mover Job Definition.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage_mover/storage_mover_job_definition" 
}

inputs = {
   name = "name of storage_mover_job_definition" 
   storage_mover_project_id = "storage_mover_project_id of storage_mover_job_definition" 
   source_name = "source_name of storage_mover_job_definition" 
   target_name = "target_name of storage_mover_job_definition" 
   copy_mode = "copy_mode of storage_mover_job_definition" 
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
| **var.name** | string  -  |  Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created. | 
| **var.storage_mover_project_id** | string  -  |  Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created. | 
| **var.source_name** | string  -  |  Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **var.target_name** | string  -  |  Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created. | 
| **var.copy_mode** | string  `Additive`, `Mirror`  |  Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.source_sub_path** | string  Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created. | 
| **var.target_sub_path** | string  Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created. | 
| **var.agent_name** | string  Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition. | 
| **var.description** | string  Specifies a description for this Storage Mover Job Definition. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Mover Job Definition. | 

Additionally, all variables are provided as outputs.
