# azurerm_data_factory_linked_service_cosmosdb

Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using SQL API.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_cosmosdb" 
}

inputs = {
   name = "name of data_factory_linked_service_cosmosdb" 
   data_factory_id = "data_factory_id of data_factory_linked_service_cosmosdb" 
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
| **name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **account_endpoint** | string |  The endpoint of the Azure CosmosDB account. Required if `connection_string` is unspecified. | 
| **account_key** | string |  The account key of the Azure Cosmos DB account. Required if `connection_string` is unspecified. | 
| **database** | string |  The name of the database. Required if `connection_string` is unspecified. | 
| **connection_string** | string |  The connection string. Required if `account_endpoint`, `account_key`, and `database` are unspecified. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
