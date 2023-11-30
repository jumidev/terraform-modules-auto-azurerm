# azurerm_data_factory_linked_service_web

Manages a Linked Service (connection) between a Web Server and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_web" 
}

inputs = {
   name = "name of data_factory_linked_service_web" 
   data_factory_id = "data_factory_id of data_factory_linked_service_web" 
   authentication_type = "authentication_type of data_factory_linked_service_web" 
   url = "url of data_factory_linked_service_web" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.data_factory_id** | string  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **var.authentication_type** | string  `Anonymous`, `Basic`, `ClientCertificate`  |  The type of authentication used to connect to the web table source. Valid options are `Anonymous`, `Basic` and `ClientCertificate`. | 
| **var.url** | string  -  |  The URL of the web service endpoint (e.g. <https://www.microsoft.com>). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.description** | string  The description for the Data Factory Linked Service. | 
| **var.integration_runtime_name** | string  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **var.annotations** | string  List of tags that can be used for describing the Data Factory Linked Service. | 
| **var.parameters** | string  A map of parameters to associate with the Data Factory Linked Service. | 
| **var.additional_properties** | string  A map of additional properties to associate with the Data Factory Linked Service. | 
| **var.password** | string  The password for Basic authentication. Required if `authentication_type` sets to `Basic`. | 
| **var.username** | string  The username for Basic authentication. Required if `authentication_type` sets to `Basic`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
