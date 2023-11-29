# azurerm_data_factory_linked_service_data_lake_storage_gen2

Manages a Linked Service (connection) between Data Lake Storage Gen2 and Azure Data Factory.~> **Note:** All arguments including the `service_principal_key` will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | -  |  -  | The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.url** | string | True | -  |  -  | The endpoint for the Azure Data Lake Storage Gen2 service. | 
| **var.storage_account_key** | string | False | -  |  -  | The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`. | 
| **var.use_managed_identity** | bool | False | -  |  -  | Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`. | 
| **var.service_principal_id** | string | False | -  |  -  | The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`. | 
| **var.service_principal_key** | string | False | -  |  -  | The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account. | 
| **var.tenant** | string | False | -  |  -  | The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **description** | string  | - | 
| **integration_runtime_name** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **url** | string  | - | 
| **storage_account_key** | string  | - | 
| **use_managed_identity** | bool  | - | 
| **service_principal_id** | string  | - | 
| **service_principal_key** | string  | - | 
| **tenant** | string  | - | 
| **id** | string  | The ID of the Data Factory Data Lake Storage Gen2 Linked Service. | 