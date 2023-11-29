# azurerm_data_factory_dataset_delimited_text

Manages an Azure Delimited Text Dataset inside an Azure Data Factory.

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
| **azure_blob_fs_location** | block  | - | 
| **azure_blob_storage_location** | block  | - | 
| **http_server_location** | block  | - | 
| **column_delimiter** | string  | - | 
| **row_delimiter** | string  | - | 
| **encoding** | string  | - | 
| **quote_character** | string  | - | 
| **escape_character** | string  | - | 
| **first_row_as_header** | bool  | - | 
| **null_value** | string  | - | 
| **compression_codec** | string  | - | 
| **compression_level** | string  | - | 
| **id** | string  | The ID of the Data Factory Dataset. | 