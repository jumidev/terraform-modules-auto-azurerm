# azurerm_data_factory_dataset_binary

Manages a Data Factory Binary Dataset inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **linked_service_name** | string | True | -  |  -  | The Data Factory Linked Service name in which to associate the Binary Dataset with. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Binary Dataset. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Binary Dataset. | 
| **compression** | block | False | -  |  -  | A `compression` block. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Dataset. | 
| **folder** | string | False | -  |  -  | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **parameters** | string | False | -  |  -  | Specifies a list of parameters to associate with the Data Factory Binary Dataset. | 
| **http_server_location** | block | False | -  |  -  | A `http_server_location` block. | 
| **azure_blob_storage_location** | block | False | -  |  -  | A `azure_blob_storage_location` block. | 
| **sftp_server_location** | block | False | -  |  -  | A `sftp_server_location` block. | 

