# azurerm_data_factory_linked_service_odbc

Manages a Linked Service (connection) between a Database and Azure Data Factory through ODBC protocol.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_odbc" 
}

inputs = {
   name = "name of data_factory_linked_service_odbc" 
   # data_factory_id → set in tfstate_inputs
   connection_string = "connection_string of data_factory_linked_service_odbc" 
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
| **name** | string |  Specifies the name of the Data Factory Linked Service ODBC. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **connection_string** | string |  The connection string in which to authenticate with ODBC. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **basic_authentication** | [block](#basic_authentication-block-structure) |  A `basic_authentication` block. | 
| **description** | string |  The description for the Data Factory Linked Service ODBC. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service ODBC. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service ODBC. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service ODBC. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service ODBC. | 

### `basic_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The username which can be used to authenticate to the ODBC endpoint. |
| `password` | string | Yes | - | The password associated with the username, which can be used to authenticate to the ODBC endpoint. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory ODBC Linked Service. | 

Additionally, all variables are provided as outputs.
