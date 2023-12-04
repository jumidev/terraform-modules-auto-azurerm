# azurerm_data_factory_integration_runtime_self_hosted

Manages a Data Factory Self-hosted Integration Runtime.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_integration_runtime_self_hosted" 
}

inputs = {
   # data_factory_id → set in tfstate_inputs
   name = "name of data_factory_integration_runtime_self_hosted" 
}

tfstate_inputs = {
   data_factory_id = "path/to/data_factory_component:id" 
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
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **name** | string |  The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  Integration runtime description. | 
| **rbac_authorization** | [block](#rbac_authorization-block-structure) |  A `rbac_authorization` block. Changing this forces a new resource to be created. | 

### `rbac_authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `resource_id` | string | Yes | - | The resource identifier of the integration runtime to be shared. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory. | 
| **primary_authorization_key** | string | No  | The primary integration runtime authentication key. | 
| **secondary_authorization_key** | string | No  | The secondary integration runtime authentication key. | 

Additionally, all variables are provided as outputs.
