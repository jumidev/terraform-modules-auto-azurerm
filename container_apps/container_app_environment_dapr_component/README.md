# azurerm_container_app_environment_dapr_component

Manages a Dapr Component for a Container App Environment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app_environment_dapr_component" 
}

inputs = {
   container_app_environment_id = "container_app_environment_id of container_app_environment_dapr_component" 
   name = "name of container_app_environment_dapr_component" 
   component_type = "component_type of container_app_environment_dapr_component" 
   version = "version of container_app_environment_dapr_component" 
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
| **var.container_app_environment_id** | string | True | -  |  The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  The name for this Dapr component. Changing this forces a new resource to be created. | 
| **var.component_type** | string | True | -  |  The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created. | 
| **var.version** | string | True | -  |  The version of the component. | 
| **var.ignore_errors** | bool | False | `False`  |  Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false` | 
| **var.init_timeout** | string | False | `5s`  |  The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`. | 
| **var.metadata** | list | False | -  |  One or more `metadata` blocks as detailed below. | 
| **var.scopes** | list | False | -  |  A list of scopes to which this component applies. | 
| **var.secret** | block | False | -  |  A `secret` block as detailed below. | | `secret` block structure: || 
|   name (string): (REQUIRED) The Secret name. ||
|   value (string): (REQUIRED) The value for this secret. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App Environment Dapr Component | 

Additionally, all variables are provided as outputs.
