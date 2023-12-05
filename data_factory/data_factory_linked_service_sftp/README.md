# azurerm_data_factory_linked_service_sftp

Manages a Linked Service (connection) between a SFTP Server and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory_linked_service_sftp"   
}

inputs = {
   name = "Specifies the name of the Data Factory Linked Service..."   
   # data_factory_id → set in tfstate_inputs
   authentication_type = "The type of authentication used to connect to the web table source..."   
   host = "The SFTP server hostname"   
   port = "The TCP port number that the SFTP server uses to listen for client connection..."   
   username = "The username used to log on to the SFTP server"   
   password = "Password to logon to the SFTP Server for Basic Authentication..."   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **data_factory_id** | string |  -  |  The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource. | 
| **authentication_type** | string |  `Anonymous`, `Basic`, `ClientCertificate`  |  The type of authentication used to connect to the web table source. Valid options are `Anonymous`, `Basic` and `ClientCertificate`. | 
| **host** | string |  -  |  The SFTP server hostname. | 
| **port** | string |  -  |  The TCP port number that the SFTP server uses to listen for client connection. Default value is 22. | 
| **username** | string |  -  |  The username used to log on to the SFTP server. | 
| **password** | string |  -  |  Password to logon to the SFTP Server for Basic Authentication. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  The description for the Data Factory Linked Service. | 
| **integration_runtime_name** | string |  The integration runtime reference to associate with the Data Factory Linked Service. | 
| **annotations** | string |  List of tags that can be used for describing the Data Factory Linked Service. | 
| **parameters** | string |  A map of parameters to associate with the Data Factory Linked Service. | 
| **additional_properties** | string |  A map of additional properties to associate with the Data Factory Linked Service. | 
| **host_key_fingerprint** | string |  The host key fingerprint of the SFTP server. | 
| **skip_host_key_validation** | string |  Whether to validate host key fingerprint while connecting. If set to `false`, `host_key_fingerprint` must also be set. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
