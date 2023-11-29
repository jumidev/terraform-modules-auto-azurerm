# azurerm_data_factory_integration_runtime_self_hosted

Manages a Data Factory Self-hosted Integration Runtime.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created. | 
| **var.description** | string | False | -  |  -  | Integration runtime description. | 
| **var.rbac_authorization** | block | False | -  |  -  | A `rbac_authorization` block. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **data_factory_id** | string  | - | 
| **name** | string  | - | 
| **description** | string  | - | 
| **rbac_authorization** | block  | - | 
| **id** | string  | The ID of the Data Factory. | 
| **primary_authorization_key** | string  | The primary integration runtime authentication key. | 
| **secondary_authorization_key** | string  | The secondary integration runtime authentication key. | 