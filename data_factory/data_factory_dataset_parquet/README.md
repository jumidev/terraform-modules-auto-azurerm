# azurerm_data_factory_dataset_parquet

Manages an Azure Parquet Dataset inside an Azure Data Factory.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_parquet" 
}

inputs = {
   name = "name of data_factory_dataset_parquet" 
   data_factory_id = "data_factory_id of data_factory_dataset_parquet" 
   linked_service_name = "linked_service_name of data_factory_dataset_parquet" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource. | 
| **var.linked_service_name** | string | True | -  |  The Data Factory Linked Service name in which to associate the Dataset with. | 
| **var.folder** | string | False | -  |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | block | False | -  |  A `schema_column` block. | 
| **var.description** | string | False | -  |  The description for the Data Factory Dataset. | 
| **var.annotations** | string | False | -  |  List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string | False | -  |  A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string | False | -  |  A map of additional properties to associate with the Data Factory Dataset. | 
| **var.http_server_location** | block | False | -  |  A `http_server_location` block. | 
| **var.azure_blob_fs_location** | block | False | -  |  A `azure_blob_fs_location` block. | 
| **var.azure_blob_storage_location** | block | False | -  |  A `azure_blob_storage_location` block. | 
| **var.compression_codec** | string | False | `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, `lz4`  |  The compression codec used to read/write text files. Valid values are `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, or `lz4`. Please note these values are case-sensitive. | 
| **var.compression_level** | string | False | `Optimal`, `Fastest`  |  Specifies the compression level. Possible values are `Optimal` and `Fastest`, | 

### `schema_column` block structure

> `name` (string): (REQUIRED) The name of the column.
> `type` (string): Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive.
> `description` (string): The description of the column.

### `http_server_location` block structure

> `relative_url` (string): (REQUIRED) The base URL to the web server hosting the file.
> `filename` (string): (REQUIRED) The filename of the file on the web server.
> `dynamic_path_enabled` (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
> `dynamic_filename_enabled` (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.
> `path` (string): The folder path to the file on the web server.

### `azure_blob_fs_location` block structure

> `file_system` (string): The container on the Azure Data Lake Storage Account hosting the file.
> `dynamic_file_system_enabled` (bool): Is the 'file_system' using dynamic expression, function or system variables? Defaults to 'false'.
> `path` (string): The folder path to the file on the Azure Data Lake Storage Account.
> `dynamic_path_enabled` (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
> `filename` (string): The filename of the file on the Azure Data Lake Storage Account.
> `dynamic_filename_enabled` (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.

### `azure_blob_storage_location` block structure

> `container` (string): (REQUIRED) The container on the Azure Blob Storage Account hosting the file.
> `dynamic_container_enabled` (bool): Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'.
> `path` (string): The folder path to the file on the Azure Blob Storage Account.
> `dynamic_path_enabled` (bool): Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'.
> `filename` (string): The filename of the file on the Azure Blob Storage Account.
> `dynamic_filename_enabled` (bool): Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
