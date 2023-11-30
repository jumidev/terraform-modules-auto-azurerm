# azurerm_data_factory_linked_service_odata

Manages a Linked Service (connection) between a Database and Azure Data Factory through OData protocol.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_odata" 
}

inputs = {
   name = "name of data_factory_linked_service_odata" 
   data_factory_id = "data_factory_id of data_factory_linked_service_odata" 
   url = "url of data_factory_linked_service_odata" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service OData. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.url** | string | True | The URL of the OData service endpoint. | 
| **var.basic_authentication** | block | False | A `basic_authentication` block. | 
| **var.description** | string | False | The description for the Data Factory Linked Service OData. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service OData. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service OData. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service OData. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service OData. | 

### `basic_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The username which can be used to authenticate to the OData endpoint. |
| `password` | string | Yes | - | The password associated with the username, which can be used to authenticate to the OData endpoint. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory OData Linked Service. | 

Additionally, all variables are provided as outputs.
