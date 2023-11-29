# azurerm_data_factory_linked_service_cosmosdb

Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using SQL API.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.account_endpoint** | string | False | The endpoint of the Azure CosmosDB account. Required if `connection_string` is unspecified. | 
| **var.account_key** | string | False | The account key of the Azure Cosmos DB account. Required if `connection_string` is unspecified. | 
| **var.database** | string | False | The name of the database. Required if `connection_string` is unspecified. | 
| **var.connection_string** | string | False | The connection string. Required if `account_endpoint`, `account_key`, and `database` are unspecified. | 



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
| **account_endpoint** | string  | - | 
| **account_key** | string  | - | 
| **database** | string  | - | 
| **connection_string** | string  | - | 
| **id** | string  | The ID of the Data Factory Linked Service. | 