# azurerm_media_job

Manages a Media Job.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.input_asset** | block | True | -  |  -  |  A `input_asset` block. Changing this forces a new Media Job to be created. | 
| **var.media_services_account_name** | string | True | -  |  -  |  The Media Services account name. Changing this forces a new Transform to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Media Job. Changing this forces a new Media Job to be created. | 
| **var.output_asset** | block | True | -  |  -  |  One or more `output_asset` blocks. Changing this forces a new Media Job to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created. | 
| **var.transform_name** | string | True | -  |  -  |  The Transform name. Changing this forces a new Media Job to be created. | 
| **var.description** | string | False | -  |  -  |  Optional customer supplied description of the Job. | 
| **var.priority** | string | False | `Normal`  |  `High`, `Normal`, `Low`  |  Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. Changing this forces a new Media Job to be created. Possible values are `High`, `Normal` and `Low`. Defaults to `Normal`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **input_asset** | block  | - | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **output_asset** | block  | - | 
| **resource_group_name** | string  | - | 
| **transform_name** | string  | - | 
| **description** | string  | - | 
| **priority** | string  | - | 
| **id** | string  | The ID of the Media Job. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_job" 
}

inputs = {
   input_asset = "input_asset of media_job" 
   media_services_account_name = "media_services_account_name of media_job" 
   name = "name of media_job" 
   output_asset = "output_asset of media_job" 
   resource_group_name = "${resource_group}" 
   transform_name = "transform_name of media_job" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```