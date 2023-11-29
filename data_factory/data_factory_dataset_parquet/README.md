# azurerm_data_factory_dataset_parquet

Manages an Azure Parquet Dataset inside an Azure Data Factory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource. | 
| **linked_service_name** | string | True | -  |  -  | The Data Factory Linked Service name in which to associate the Dataset with. | 
| **folder** | string | False | -  |  -  | The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **schema_column** | block | False | -  |  -  | A `schema_column` block. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Dataset. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Dataset. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Dataset. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Dataset. | 
| **http_server_location** | block | False | -  |  -  | A `http_server_location` block. | 
| **azure_blob_fs_location** | block | False | -  |  -  | A `azure_blob_fs_location` block. | 
| **azure_blob_storage_location** | block | False | -  |  -  | A `azure_blob_storage_location` block. | 
| **compression_codec** | string | False | -  |  `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, `lz4`  | The compression codec used to read/write text files. Valid values are `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, or `lz4`. Please note these values are case-sensitive. | 
| **compression_level** | string | False | -  |  `Optimal`, `Fastest`  | Specifies the compression level. Possible values are `Optimal` and `Fastest`, | 

