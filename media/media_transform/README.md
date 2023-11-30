# azurerm_media_transform

Manages a Transform.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_transform" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_transform" 
   name = "name of media_transform" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Transform to be created. | 
| **var.name** | string | True | The name which should be used for this Transform. Changing this forces a new Transform to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Transform should exist. Changing this forces a new Transform to be created. | 
| **var.description** | string | False | An optional verbose description of the Transform. | 
| **var.output** | block | False | One or more `output` blocks. At least one `output` must be defined. | 

### `output` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `audio_analyzer_preset` | block | No | - | An 'audio_analyzer_preset' block. |
| `builtin_preset` | block | No | - | A 'builtin_preset' block. |
| `custom_preset` | block | No | - | A 'custom_preset' block. |
| `face_detector_preset` | block | No | - | A 'face_detector_preset' block. |
| `on_error_action` | string | No | StopProcessingJob | A Transform can define more than one outputs. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with 'ContinueJob'. Possible values are 'StopProcessingJob' or 'ContinueJob'. Defaults to 'StopProcessingJob'. |
| `relative_priority` | string | No | Normal | Sets the relative priority of the TransformOutputs within a Transform. This sets the priority that the service uses for processing Transform Outputs. Possible values are 'High', 'Normal' or 'Low'. Defaults to 'Normal'. |
| `video_analyzer_preset` | block | No | - | A 'video_analyzer_preset' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Transform. | 

Additionally, all variables are provided as outputs.
