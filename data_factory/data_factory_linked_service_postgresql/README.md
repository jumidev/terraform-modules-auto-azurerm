# azurerm_data_factory_linked_service_postgresql

Manages a Linked Service (connection) between PostgreSQL and Azure Data Factory.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_postgresql" 
}

inputs = {
   name = "name of data_factory_linked_service_postgresql" 
   data_factory_id = "data_factory_id of data_factory_linked_service_postgresql" 
   connection_string = "connection_string of data_factory_linked_service_postgresql" 
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
| **var.name** | string | True | Specifies the name of the Data Factory Linked Service PostgreSQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.connection_string** | string | True | The connection string in which to authenticate with PostgreSQL. | 
| **var.description** | string | False | The description for the Data Factory Linked Service PostgreSQL. | 
| **var.integration_runtime_name** | string | False | The integration runtime reference to associate with the Data Factory Linked Service PostgreSQL. | 
| **var.annotations** | string | False | List of tags that can be used for describing the Data Factory Linked Service PostgreSQL. | 
| **var.parameters** | string | False | A map of parameters to associate with the Data Factory Linked Service PostgreSQL. | 
| **var.additional_properties** | string | False | A map of additional properties to associate with the Data Factory Linked Service PostgreSQL. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory PostgreSQL Linked Service. | 

Additionally, all variables are provided as outputs.
