# azurerm_media_job

Manages a Media Job.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.input_asset** | block | True | -  |  -  |  A `input_asset` block. Changing this forces a new Media Job to be created. | 
| `input_asset` block structure: || 
|   name (string): (REQUIRED) The name of the input Asset. Changing this forces a new Media Job to be created. ||
|   label (string): A label that is assigned to a JobInputClip, that is used to satisfy a reference used in the Transform. For example, a Transform can be authored so as to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'. Changing this forces a new resource to be created. ||
| **var.media_services_account_name** | string | True | -  |  -  |  The Media Services account name. Changing this forces a new Transform to be created. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Media Job. Changing this forces a new Media Job to be created. | 
| **var.output_asset** | block | True | -  |  -  |  One or more `output_asset` blocks. Changing this forces a new Media Job to be created. | 
| `output_asset` block structure: || 
|   name (string): (REQUIRED) The name of the output Asset. Changing this forces a new Media Job to be created. ||
|   label (string): A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. Changing this forces a new resource to be created. ||
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created. | 
| **var.transform_name** | string | True | -  |  -  |  The Transform name. Changing this forces a new Media Job to be created. | 
| **var.description** | string | False | -  |  -  |  Optional customer supplied description of the Job. | 
| **var.priority** | string | False | `Normal`  |  `High`, `Normal`, `Low`  |  Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. Changing this forces a new Media Job to be created. Possible values are `High`, `Normal` and `Low`. Defaults to `Normal`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Media Job. | 

Additionally, all variables are provided as outputs.
