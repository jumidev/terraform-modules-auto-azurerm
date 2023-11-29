# azurerm_data_factory_dataset_binary

Manages a Data Factory Binary Dataset inside an Azure Data Factory.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | The Data Factory Linked Service name in which to associate the Binary Dataset with. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Binary Dataset. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Binary Dataset. | 
| **var.compression** | block | False | A `compression` block. | 
| **var.description** | string | False | The description for the Data Factory Dataset. | 
| **var.folder** | string | False | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.parameters** | string | False | Specifies a list of parameters to associate with the Data Factory Binary Dataset. | 
| **var.http_server_location** | block | False | A `http_server_location` block. | 
| **var.azure_blob_storage_location** | block | False | A `azure_blob_storage_location` block. | 
| **var.sftp_server_location** | block | False | A `sftp_server_location` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **linked_service_name** | string  | - | 
| **additional_properties** | string  | - | 
| **annotations** | string  | - | 
| **compression** | block  | - | 
| **description** | string  | - | 
| **folder** | string  | - | 
| **parameters** | string  | - | 
| **http_server_location** | block  | - | 
| **azure_blob_storage_location** | block  | - | 
| **sftp_server_location** | block  | - | 
| **id** | string  | The ID of the Data Factory Dataset. | 