# azurerm_data_factory_dataset_cosmosdb_sqlapi

Manages an Azure Cosmos DB SQL API Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_cosmosdb_sqlapi" 
}

inputs = {
   name = "name of data_factory_dataset_cosmosdb_sqlapi" 
   data_factory_id = "data_factory_id of data_factory_dataset_cosmosdb_sqlapi" 
   linked_service_name = "linked_service_name of data_factory_dataset_cosmosdb_sqlapi" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | A `schema_column` block. | 
| **var.description** | string | False | The description for the Data Factory Dataset. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Dataset. | 
| **var.collection_name** | string | False | The collection name of the Data Factory Dataset Azure Cosmos DB SQL API. | 

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | - | Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive. |
| `description` | string | No | - | The description of the column. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
