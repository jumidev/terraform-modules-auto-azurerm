# azurerm_data_factory_dataset_binary

Manages a Data Factory Binary Dataset inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_dataset_binary"   
}

inputs = {
   name = "Specifies the name of the Data Factory Binary Dataset..."   
   # data_factory_id → set in tfstate_inputs
   linked_service_name = "The Data Factory Linked Service name in which to associate the Binary Dataset wi..."   
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
| **name** | string |  Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **linked_service_name** | string |  The Data Factory Linked Service name in which to associate the Binary Dataset with. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Binary Dataset. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Binary Dataset. | 
| **compression** | [block](#compression-block-structure) |  A `compression` block. | 
| **description** | string |  The description for the Data Factory Dataset. | 
| **folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **parameters** | string |  Specifies a list of parameters to associate with the Data Factory Binary Dataset. | 
| **http_server_location** | [block](#http_server_location-block-structure) |  A `http_server_location` block. | 
| **azure_blob_storage_location** | [block](#azure_blob_storage_location-block-structure) |  A `azure_blob_storage_location` block. | 
| **sftp_server_location** | [block](#sftp_server_location-block-structure) |  A `sftp_server_location` block. | 

### `sftp_server_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | The folder path to the file on the SFTP server. |
| `filename` | string | Yes | - | The filename of the file on the SFTP server. |
| `dynamic_path_enabled` | bool | No | False | Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_filename_enabled` | bool | No | False | Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. |

### `http_server_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `relative_url` | string | Yes | - | The base URL to the web server hosting the file. |
| `path` | string | Yes | - | The folder path to the file on the web server. |
| `filename` | string | Yes | - | The filename of the file on the web server. |
| `dynamic_path_enabled` | bool | No | False | Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_filename_enabled` | bool | No | False | Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. |

### `compression` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of compression used during transport. Possible values are 'BZip2', 'Deflate', 'GZip', 'Tar', 'TarGZip' and 'ZipDeflate'. |
| `level` | string | No | - | The level of compression. Possible values are 'Fastest' and 'Optimal'. |

### `azure_blob_storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container` | string | Yes | - | The container on the Azure Blob Storage Account hosting the file. |
| `path` | string | No | - | The folder path to the file in the blob container. |
| `filename` | string | No | - | The filename of the file in the blob container. |
| `dynamic_container_enabled` | bool | No | False | Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_path_enabled` | bool | No | False | Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_filename_enabled` | bool | No | False | Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
