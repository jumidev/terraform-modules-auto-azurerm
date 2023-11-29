# azurerm_container_app_environment_dapr_component

Manages a Dapr Component for a Container App Environment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **container_app_environment_id** | string | True | -  |  -  | The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The name for this Dapr component. Changing this forces a new resource to be created. | 
| **component_type** | string | True | -  |  -  | The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created. | 
| **version** | string | True | -  |  -  | The version of the component. | 
| **ignore_errors** | bool | False | `False`  |  -  | Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false` | 
| **init_timeout** | string | False | `5s`  |  -  | The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`. | 
| **metadata** | list | False | -  |  -  | One or more `metadata` blocks as detailed below. | 
| **scopes** | list | False | -  |  -  | A list of scopes to which this component applies. | 
| **secret** | block | False | -  |  -  | A `secret` block as detailed below. | 

