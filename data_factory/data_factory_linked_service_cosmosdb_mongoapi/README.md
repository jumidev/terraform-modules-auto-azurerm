# azurerm_data_factory_linked_service_cosmosdb_mongoapi

Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using Mongo API.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_cosmosdb_mongoapi" 
}

inputs = {
   name = "name of data_factory_linked_service_cosmosdb_mongoapi" 
   data_factory_id = "data_factory_id of data_factory_linked_service_cosmosdb_mongoapi" 
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
| **var.name** | string  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.description** | string  -  |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string  -  |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string  -  |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string  -  |  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string  -  |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.database** | string  -  |  The name of the database. | 
| **var.connection_string** | string  -  |  The connection string. | 
| **var.server_version_is_32_or_higher** | bool  `False`  |  Whether API server version is 3.2 or higher. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
