# azurerm_data_factory_dataset_http

Manages an Azure HTTP Dataset inside an Azure Data Factory.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_dataset_http" 
}

inputs = {
   name = "name of data_factory_dataset_http" 
   data_factory_id = "data_factory_id of data_factory_dataset_http" 
   linked_service_name = "linked_service_name of data_factory_dataset_http" 
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
| **var.name** | string |  Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.linked_service_name** | string |  The Data Factory Linked Service name in which to associate the Dataset with. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.folder** | string |  The folder that this Dataset is in. If not specified, the Dataset will appear at the root level. | 
| **var.schema_column** | [block](#schema_column-block-structure) |  A `schema_column` block. | 
| **var.description** | string |  The description for the Data Factory Dataset. | 
| **var.annotations** | string |  List of tags that can be used for describing the Data Factory Dataset. | 
| **var.parameters** | string |  A map of parameters to associate with the Data Factory Dataset. | 
| **var.additional_properties** | string |  A map of additional properties to associate with the Data Factory Dataset. | 
| **var.relative_url** | string |  The relative URL based on the URL in the HTTP Linked Service. | 
| **var.request_body** | string |  The body for the HTTP request. | 
| **var.request_method** | string |  The HTTP method for the HTTP request. (e.g. GET, POST) | 

### `schema_column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | - | Type of the column. Valid values are 'Byte', 'Byte[]', 'Boolean', 'Date', 'DateTime','DateTimeOffset', 'Decimal', 'Double', 'Guid', 'Int16', 'Int32', 'Int64', 'Single', 'String', 'TimeSpan'. Please note these values are case sensitive. |
| `description` | string | No | - | The description of the column. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Dataset. | 

Additionally, all variables are provided as outputs.
