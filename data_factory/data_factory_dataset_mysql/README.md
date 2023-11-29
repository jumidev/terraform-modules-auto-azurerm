# azurerm_data_factory_dataset_mysql

Manages a MySQL Dataset inside a Azure Data Factory.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Data Factory Dataset MySQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | -  |  -  | The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | -  |  -  | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | -  |  -  | A `schema_column` block. | 
| **var.description** | string | False | -  |  -  | The description for the Data Factory Dataset MySQL. | 
| **var.annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Dataset MySQL. | 
| **var.parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Dataset MySQL. | 
| **var.additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Dataset MySQL. | 
| **var.table_name** | string | False | -  |  -  | The table name of the Data Factory Dataset MySQL. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **linked_service_name** | string  | - | 
| **folder** | string  | - | 
| **schema_column** | block  | - | 
| **description** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **table_name** | string  | - | 
| **id** | string  | The ID of the Data Factory MySQL Dataset. | 