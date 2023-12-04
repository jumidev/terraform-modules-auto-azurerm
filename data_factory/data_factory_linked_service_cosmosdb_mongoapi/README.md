# azurerm_data_factory_linked_service_cosmosdb_mongoapi

Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using Mongo API.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_cosmosdb_mongoapi" 
}

inputs = {
   name = "name of data_factory_linked_service_cosmosdb_mongoapi" 
   # data_factory_id → set in tfstate_inputs
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
| **name** | string |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  -  |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  -  |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  -  |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  -  |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **database** | string |  -  |  The name of the database. | 
| **connection_string** | string |  -  |  The connection string. | 
| **server_version_is_32_or_higher** | bool |  `False`  |  Whether API server version is 3.2 or higher. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
