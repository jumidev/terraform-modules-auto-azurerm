# azurerm_data_factory_dataset_json

Manages an Azure JSON Dataset inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_dataset_json"   
}

inputs = {
   name = "name of data_factory_dataset_json"   
   # data_factory_id → set in tfstate_inputs
   linked_service_name = "linked_service_name of data_factory_dataset_json"   
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
| **name** | string |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **linked_service_name** | string |  The Data Factory Linked Service name in which to associate the Dataset with. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **schema_column** | [block](#schema_column-block-structure) |  A `schema_column` block. | 
| **description** | string |  The description for the Data Factory Dataset. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Dataset. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Dataset. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Dataset. | 
| **http_server_location** | [block](#http_server_location-block-structure) |  A `http_server_location` block. | 
| **azure_blob_storage_location** | [block](#azure_blob_storage_location-block-structure) |  A `azure_blob_storage_location` block. | 
| **encoding** | string |  The encoding format for the file. | 

### `azure_blob_storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container` | string | Yes | - | The container on the Azure Blob Storage Account hosting the file. |
| `path` | string | Yes | - | The folder path to the file on the web server. |
| `filename` | string | Yes | - | The filename of the file on the web server. |
| `dynamic_container_enabled` | bool | No | False | Is the 'container' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_path_enabled` | bool | No | False | Is the 'path' using dynamic expression, function or system variables? Defaults to 'false'. |
| `dynamic_filename_enabled` | bool | No | False | Is the 'filename' using dynamic expression, function or system variables? Defaults to 'false'. |

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the column. |
| `type` | string | No | - | Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive. |
| `description` | string | No | - | The description of the column. |

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
