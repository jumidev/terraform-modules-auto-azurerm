# azurerm_data_factory_dataset_delimited_text

Manages an Azure Delimited Text Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_delimited_text" 
}

inputs = {
   name = "name of data_factory_dataset_delimited_text" 
   data_factory_id = "data_factory_id of data_factory_dataset_delimited_text" 
   linked_service_name = "linked_service_name of data_factory_dataset_delimited_text" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | -  |  -  |  The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | -  |  -  |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | -  |  -  |  A `schema_column` block. | 
| **var.description** | string | False | -  |  -  |  The description for the Data Factory Dataset. | 
| **var.annotations** | string | False | -  |  -  |  List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string | False | -  |  -  |  A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string | False | -  |  -  |  A map of additional properties to associate with the Data Factory Dataset. | 
| **var.azure_blob_fs_location** | block | False | -  |  -  |  An `azure_blob_fs_location` block. | 
| **var.azure_blob_storage_location** | block | False | -  |  -  |  An `azure_blob_storage_location` block. | 
| **var.http_server_location** | block | False | -  |  -  |  A `http_server_location` block. | 
| **var.column_delimiter** | string | False | `,`  |  -  |  The column delimiter. Defaults to `,`. | 
| **var.row_delimiter** | string | False | `\r\n`  |  -  |  The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively. | 
| **var.encoding** | string | False | -  |  -  |  The encoding format for the file. | 
| **var.quote_character** | string | False | `\"`  |  -  |  The quote character. Defaults to `"`. | 
| **var.escape_character** | string | False | `\\`  |  -  |  The escape character. Defaults to `\`. | 
| **var.first_row_as_header** | bool | False | `False`  |  -  |  When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`. | 
| **var.null_value** | string | False | ``  |  -  |  The null value string. Defaults to `""`. | 
| **var.compression_codec** | string | False | -  |  `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, `lz4`  |  The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive. | 
| **var.compression_level** | string | False | -  |  `Fastest`, `Optimal`  |  The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive. | 

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | - | Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive. |
| `description` | string | No | - | The description of the column. |

### `azure_blob_fs_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `file_system` | string | No | - | The storage data lake gen2 file system on the Azure Blob Storage Account hosting the file. |
| `dynamic_file_system_enabled` | bool | No | False | Is the 'file_system' using dynamic expression, function or system variables? Defaults to 'false'. |
| `path` | string | No | - | The folder path to the file. |
| `dynamic_path_enabled` | bool | No | False | Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. |
| `filename` | string | No | - | The filename of the file. |
| `dynamic_filename_enabled` | bool | No | False | Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. |

### `azure_blob_storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container` | string | Yes | - | The container on the Azure Blob Storage Account hosting the file. |
| `path` | string | No | - | The folder path to the file. This can be an empty string. |
| `filename` | string | No | - | The filename of the file. |
| `dynamic_container_enabled` | bool | No | False | Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'. |
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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
