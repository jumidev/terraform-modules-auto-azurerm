# azurerm_data_factory_linked_service_odbc

Manages a Linked Service (connection) between a Database and Azure Data Factory through ODBC protocol.~> **Note:** All arguments including the connection_string will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Data Factory Linked Service ODBC. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string | True | -  |  -  | The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **connection_string** | string | True | -  |  -  | The connection string in which to authenticate with ODBC. | 
| **basic_authentication** | block | False | -  |  -  | A `basic_authentication` block. | 
| **description** | string | False | -  |  -  | The description for the Data Factory Linked Service ODBC. | 
| **integration_runtime_name** | string | False | -  |  -  | The integration runtime reference to associate with the Data Factory Linked Service ODBC. | 
| **annotations** | string | False | -  |  -  | List of tags that can be used for describing the Data Factory Linked Service ODBC. | 
| **parameters** | string | False | -  |  -  | A map of parameters to associate with the Data Factory Linked Service ODBC. | 
| **additional_properties** | string | False | -  |  -  | A map of additional properties to associate with the Data Factory Linked Service ODBC. | 

