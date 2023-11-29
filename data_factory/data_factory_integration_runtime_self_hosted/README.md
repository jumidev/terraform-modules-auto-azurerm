# azurerm_data_factory_integration_runtime_self_hosted

Manages a Data Factory Self-hosted Integration Runtime.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **name** | string | True | -  |  -  | The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created. | 
| **description** | string | False | -  |  -  | Integration runtime description. | 
| **rbac_authorization** | block | False | -  |  -  | A `rbac_authorization` block. Changing this forces a new resource to be created. | 

