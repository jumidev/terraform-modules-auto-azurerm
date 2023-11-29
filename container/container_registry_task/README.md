# azurerm_container_registry_task

Manages a Container Registry Task.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created. | 
| **container_registry_id** | string | True | -  |  -  | The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created. | 
| **agent_pool_name** | string | False | -  |  -  | The name of the dedicated Container Registry Agent Pool for this Container Registry Task. | 
| **agent_setting** | block | False | -  |  -  | A `agent_setting` block. | 
| **enabled** | bool | False | `True`  |  -  | Should this Container Registry Task be enabled? Defaults to `true`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **platform** | block | False | -  |  -  | A `platform` block. | 
| **docker_step** | block | False | -  |  -  | A `docker_step` block. | 
| **encoded_step** | block | False | -  |  -  | A `encoded_step` block. | 
| **file_step** | block | False | -  |  -  | A `file_step` block. | 
| **base_image_trigger** | block | False | -  |  -  | A `base_image_trigger` block. | 
| **source_trigger** | block | False | -  |  -  | One or more `source_trigger` blocks. | 
| **timer_trigger** | block | False | -  |  -  | One or more `timer_trigger` blocks. | 
| **is_system_task** | bool | False | `False`  |  -  | Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`. | 
| **log_template** | string | False | -  |  -  | The template that describes the run log artifact. | 
| **registry_credential** | block | False | -  |  -  | One `registry_credential` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Container Registry Task. | 
| **timeout_in_seconds** | int | False | `3600`  |  -  | The timeout of this Container Registry Task in seconds. The valid range lies from 300 to 28800. Defaults to `3600`. | 

