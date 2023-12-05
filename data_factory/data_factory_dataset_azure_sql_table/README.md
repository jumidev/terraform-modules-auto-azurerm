# azurerm_data_factory_dataset_azure_sql_table

Manages an Azure SQL Table Dataset inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_dataset_azure_sql_table"   
}

inputs = {
   name = "name of data_factory_dataset_azure_sql_table"   
   # data_factory_id → set in tfstate_inputs
   linked_service_id = "linked_service_id of data_factory_dataset_azure_sql_table"   
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
| **name** | string |  Specifies the name of the Data Factory Dataset Azure SQL Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **linked_service_id** | string |  The Data Factory Linked Service ID in which to associate the Dataset with. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **schema** | string |  The schema name of the table in the Azure SQL Database. | 
| **table** | string |  The table name of the table in the Azure SQL Database. | 
| **folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **schema_column** | [block](#schema_column-block-structure) |  A `schema_column` block. | 
| **description** | string |  The description for the Data Factory Dataset Azure SQL Table. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Dataset Azure SQL Table. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Dataset Azure SQL Table. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Dataset Azure SQL Table. | 

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the column. |
| `type` | string | No | - | Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive. |
| `description` | string | No | - | The description of the column. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Azure SQL Table Dataset. | 

Additionally, all variables are provided as outputs.
