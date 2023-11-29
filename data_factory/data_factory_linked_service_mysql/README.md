# azurerm_data_factory_linked_service_mysql

Manages a Linked Service (connection) between MySQL and Azure Data Factory.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.connection_string** | string | True | -  |  -  | The connection string in which to authenticate with MySQL. | 
| **var.description** | string | False | -  |  -  | The description for the Data Factory Linked Service MySQL. | 
| **var.integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service MySQL. | 
| **var.annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service MySQL. | 
| **var.parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service MySQL. | 
| **var.additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service MySQL. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **connection_string** | string  | - | 
| **description** | string  | - | 
| **integration_runtime_name** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **id** | string  | The ID of the Data Factory MySQL Linked Service. | 