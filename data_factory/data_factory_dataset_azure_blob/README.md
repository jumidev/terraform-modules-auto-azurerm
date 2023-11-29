# azurerm_data_factory_dataset_azure_blob

Manages an Azure Blob Dataset inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | -  |  The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | -  |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | -  |  A `schema_column` block. | 
| **var.description** | string | False | -  |  The description for the Data Factory Dataset. | 
| **var.annotations** | string | False | -  |  List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string | False | -  |  A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string | False | -  |  A map of additional properties to associate with the Data Factory Dataset. | 
| **var.path** | string | False | -  |  The path of the Azure Blob. | 
| **var.filename** | string | False | -  |  The filename of the Azure Blob. | 
| **var.dynamic_path_enabled** | bool | False | `False`  |  Is the `path` using dynamic expression, function or system variables? Defaults to `false`. | 
| **var.dynamic_filename_enabled** | bool | False | `False`  |  Is the `filename` using dynamic expression, function or system variables? Defaults to `false`. | 



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
| **path** | string  | - | 
| **filename** | string  | - | 
| **dynamic_path_enabled** | bool  | - | 
| **dynamic_filename_enabled** | bool  | - | 
| **id** | string  | The ID of the Data Factory Dataset. | 