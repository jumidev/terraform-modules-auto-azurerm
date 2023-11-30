# azurerm_data_factory_dataset_binary

Manages a Data Factory Binary Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_binary" 
}

inputs = {
   name = "name of data_factory_dataset_binary" 
   data_factory_id = "data_factory_id of data_factory_dataset_binary" 
   linked_service_name = "linked_service_name of data_factory_dataset_binary" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | The Data Factory Linked Service name in which to associate the Binary Dataset with. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Binary Dataset. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Binary Dataset. | 
| **var.compression** | block | False | A `compression` block. | | `compression` block structure: || 
|   type (string): (REQUIRED) The type of compression used during transport. Possible values are 'BZip2', 'Deflate', 'GZip', 'Tar', 'TarGZip' and 'ZipDeflate'. ||
|   level (string): The level of compression. Possible values are 'Fastest' and 'Optimal'. ||

| **var.description** | string | False | The description for the Data Factory Dataset. | 
| **var.folder** | string | False | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.parameters** | string | False | Specifies a list of parameters to associate with the Data Factory Binary Dataset. | 
| **var.http_server_location** | block | False | A `http_server_location` block. | | `http_server_location` block structure: || 
|   relative_url (string): (REQUIRED) The base URL to the web server hosting the file. ||
|   path (string): (REQUIRED) The folder path to the file on the web server. ||
|   filename (string): (REQUIRED) The filename of the file on the web server. ||
|   dynamic_path_enabled (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. ||
|   dynamic_filename_enabled (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. ||

| **var.azure_blob_storage_location** | block | False | A `azure_blob_storage_location` block. | | `azure_blob_storage_location` block structure: || 
|   container (string): (REQUIRED) The container on the Azure Blob Storage Account hosting the file. ||
|   path (string): The folder path to the file in the blob container. ||
|   filename (string): The filename of the file in the blob container. ||
|   dynamic_container_enabled (bool): Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'. ||
|   dynamic_path_enabled (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. ||
|   dynamic_filename_enabled (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. ||

| **var.sftp_server_location** | block | False | A `sftp_server_location` block. | | `sftp_server_location` block structure: || 
|   path (string): (REQUIRED) The folder path to the file on the SFTP server. ||
|   filename (string): (REQUIRED) The filename of the file on the SFTP server. ||
|   dynamic_path_enabled (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. ||
|   dynamic_filename_enabled (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
