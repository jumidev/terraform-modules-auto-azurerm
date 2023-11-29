# azurerm_data_factory_dataset_postgresql

Manages a PostgreSQL Dataset inside a Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Dataset PostgreSQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **linked_service_name** | string | True | -  |  -  | The Data Factory Linked Service name in which to associate the Dataset with. | 
| **table_name** | string | False | -  |  -  | The table name of the Data Factory Dataset PostgreSQL. | 
| **folder** | string | False | -  |  -  | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **schema_column** | block | False | -  |  -  | A `schema_column` block. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Dataset PostgreSQL. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Dataset PostgreSQL. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Dataset PostgreSQL. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Dataset PostgreSQL. | 

