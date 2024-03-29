# azurerm_container_app_environment_dapr_component

Manages a Dapr Component for a Container App Environment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_environment_dapr_component"   
}

inputs = {
   # container_app_environment_id → set in component_inputs
   name = "The name for this Dapr component"   
   component_type = "The Dapr Component Type"   
   version = "The version of the component"   
}

component_inputs = {
   container_app_environment_id = "path/to/container_app_environment_component:id"   
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
| **container_app_environment_id** | string |  The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created. | 
| **name** | string |  The name for this Dapr component. Changing this forces a new resource to be created. | 
| **component_type** | string |  The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created. | 
| **version** | string |  The version of the component. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ignore_errors** | bool |  `False`  |  Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false` | 
| **init_timeout** | string |  `5s`  |  The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`. | 
| **metadata** | string |  -  |  One or more `metadata` blocks as detailed below. | 
| **scopes** | list |  -  |  A list of scopes to which this component applies. ~> **NOTE:** See the official docs for more information at https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-scopes | 
| **secret** | [block](#secret-block-structure) |  -  |  A `secret` block as detailed below. | 

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Secret name. |
| `value` | string | Yes | - | The value for this secret. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | The value for this secret. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container App Environment Dapr Component | 

Additionally, all variables are provided as outputs.
