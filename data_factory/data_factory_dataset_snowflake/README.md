# azurerm_data_factory_dataset_snowflake

Manages a Snowflake Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_snowflake" 
}

inputs = {
   name = "name of data_factory_dataset_snowflake" 
   data_factory_id = "data_factory_id of data_factory_dataset_snowflake" 
   linked_service_name = "linked_service_name of data_factory_dataset_snowflake" 
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
| **var.name** | string |  Specifies the name of the Data Factory Dataset Snowflake. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string |  The Data Factory Linked Service name in which to associate the Dataset with. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.schema_name** | string |  The schema name of the Data Factory Dataset Snowflake. | 
| **var.table_name** | string |  The table name of the Data Factory Dataset Snowflake. | 
| **var.folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block |  A `schema_column` block. | 
| **var.description** | string |  The description for the Data Factory Dataset Snowflake. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Dataset Snowflake. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Dataset Snowflake. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Dataset Snowflake. | 

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | - | Type of the column. Valid values are 'NUMBER', 'DECIMAL', 'NUMERIC', 'INT', 'INTEGER', 'BIGINT', 'SMALLINT', 'FLOAT''FLOAT4', 'FLOAT8', 'DOUBLE', 'DOUBLE PRECISION', 'REAL', 'VARCHAR', 'CHAR', 'CHARACTER', 'STRING', 'TEXT', 'BINARY', 'VARBINARY', 'BOOLEAN', 'DATE', 'DATETIME', 'TIME', 'TIMESTAMP', 'TIMESTAMP_LTZ', 'TIMESTAMP_NTZ', 'TIMESTAMP_TZ', 'VARIANT', 'OBJECT', 'ARRAY', 'GEOGRAPHY'. Please note these values are case sensitive. |
| `precision` | int | No | - | The total number of digits allowed. |
| `scale` | int | No | - | The number of digits allowed to the right of the decimal point. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Snowflake Dataset. | 

Additionally, all variables are provided as outputs.
