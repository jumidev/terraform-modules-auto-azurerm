# azurerm_data_factory_linked_service_web

Manages a Linked Service (connection) between a Web Server and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string | True | -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.description** | string | False | -  |  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string | False | -  |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string | False | -  |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string | False | -  |  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string | False | -  |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.authentication_type** | string | True | `Anonymous`, `Basic`, `ClientCertificate`  |  The type of authentication used to connect to the web table source. Valid options are `Anonymous`, `Basic` and `ClientCertificate`. | 
| **var.url** | string | True | -  |  The URL of the web service endpoint (e.g. <https://www.microsoft.com>). | 
| **var.password** | string | False | -  |  The password for Basic authentication. Required if `authentication_type` sets to `Basic`. | 
| **var.username** | string | False | -  |  The username for Basic authentication. Required if `authentication_type` sets to `Basic`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **data_factory_id** | string  | - | 
| **description** | string  | - | 
| **integration_runtime_name** | string  | - | 
| **annotations** | string  | - | 
| **parameters** | string  | - | 
| **additional_properties** | string  | - | 
| **authentication_type** | string  | - | 
| **url** | string  | - | 
| **password** | string  | - | 
| **username** | string  | - | 
| **id** | string  | The ID of the Data Factory Linked Service. | 