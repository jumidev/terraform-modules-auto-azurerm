# azurerm_data_factory_linked_service_sftp

Manages a Linked Service (connection) between a SFTP Server and Azure Data Factory.~> **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory_linked_service_sftp" 
}

inputs = {
   name = "name of data_factory_linked_service_sftp" 
   data_factory_id = "data_factory_id of data_factory_linked_service_sftp" 
   authentication_type = "authentication_type of data_factory_linked_service_sftp" 
   host = "host of data_factory_linked_service_sftp" 
   port = "port of data_factory_linked_service_sftp" 
   username = "username of data_factory_linked_service_sftp" 
   password = "password of data_factory_linked_service_sftp" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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
| **var.host** | string | True | -  |  The SFTP server hostname. | 
| **var.port** | string | True | -  |  The TCP port number that the SFTP server uses to listen for client connection. Default value is 22. | 
| **var.username** | string | True | -  |  The username used to log on to the SFTP server. | 
| **var.password** | string | True | -  |  Password to logon to the SFTP Server for Basic Authentication. | 
| **var.host_key_fingerprint** | string | False | -  |  The host key fingerprint of the SFTP server. | 
| **var.skip_host_key_validation** | string | False | -  |  Whether to validate host key fingerprint while connecting. If set to `false`, `host_key_fingerprint` must also be set. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory Linked Service. | 

Additionally, all variables are provided as outputs.
