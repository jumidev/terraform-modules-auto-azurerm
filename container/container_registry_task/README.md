# azurerm_container_registry_task

Manages a Container Registry Task.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry_task" 
}

inputs = {
   name = "name of container_registry_task" 
   container_registry_id = "container_registry_id of container_registry_task" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created. | 
| **var.container_registry_id** | string | True | -  |  The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created. | 
| **var.agent_pool_name** | string | False | -  |  The name of the dedicated Container Registry Agent Pool for this Container Registry Task. | 
| **var.agent_setting** | block | False | -  |  A `agent_setting` block. | 
| **var.enabled** | bool | False | `True`  |  Should this Container Registry Task be enabled? Defaults to `true`. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.platform** | block | False | -  |  A `platform` block. | 
| **var.docker_step** | block | False | -  |  A `docker_step` block. | 
| **var.encoded_step** | block | False | -  |  A `encoded_step` block. | 
| **var.file_step** | block | False | -  |  A `file_step` block. | 
| **var.base_image_trigger** | block | False | -  |  A `base_image_trigger` block. | 
| **var.source_trigger** | block | False | -  |  One or more `source_trigger` blocks. | 
| **var.timer_trigger** | block | False | -  |  One or more `timer_trigger` blocks. | 
| **var.is_system_task** | bool | False | `False`  |  Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`. | 
| **var.log_template** | string | False | -  |  The template that describes the run log artifact. | 
| **var.registry_credential** | block | False | -  |  One `registry_credential` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Container Registry Task. | 
| **var.timeout_in_seconds** | int | False | `3600`  |  The timeout of this Container Registry Task in seconds. The valid range lies from 300 to 28800. Defaults to `3600`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry Task. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
