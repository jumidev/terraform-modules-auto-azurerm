# azurerm_data_factory_integration_runtime_self_hosted

Manages a Data Factory Self-hosted Integration Runtime.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_integration_runtime_self_hosted" 
}

inputs = {
   data_factory_id = "data_factory_id of data_factory_integration_runtime_self_hosted" 
   name = "name of data_factory_integration_runtime_self_hosted" 
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
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.name** | string | True | The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created. | 
| **var.description** | string | False | Integration runtime description. | 
| **var.rbac_authorization** | block | False | A `rbac_authorization` block. Changing this forces a new resource to be created. | 

### `rbac_authorization` block structure

> `resource_id` (string): (REQUIRED) The resource identifier of the integration runtime to be shared.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory. | 
| **primary_authorization_key** | string | No  | The primary integration runtime authentication key. | 
| **secondary_authorization_key** | string | No  | The secondary integration runtime authentication key. | 

Additionally, all variables are provided as outputs.
