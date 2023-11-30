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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
