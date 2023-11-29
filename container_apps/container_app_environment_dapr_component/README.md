# azurerm_container_app_environment_dapr_component

Manages a Dapr Component for a Container App Environment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.container_app_environment_id** | string | True | -  |  -  | The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name for this Dapr component. Changing this forces a new resource to be created. | 
| **var.component_type** | string | True | -  |  -  | The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created. | 
| **var.version** | string | True | -  |  -  | The version of the component. | 
| **var.ignore_errors** | bool | False | `False`  |  -  | Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false` | 
| **var.init_timeout** | string | False | `5s`  |  -  | The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`. | 
| **var.metadata** | list | False | -  |  -  | One or more `metadata` blocks as detailed below. | 
| **var.scopes** | list | False | -  |  -  | A list of scopes to which this component applies. | 
| **var.secret** | block | False | -  |  -  | A `secret` block as detailed below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **container_app_environment_id** | string  | - | 
| **name** | string  | - | 
| **component_type** | string  | - | 
| **version** | string  | - | 
| **ignore_errors** | bool  | - | 
| **init_timeout** | string  | - | 
| **metadata** | list  | - | 
| **scopes** | list  | - | 
| **secret** | block  | - | 
| **id** | string  | The ID of the Container App Environment Dapr Component | 