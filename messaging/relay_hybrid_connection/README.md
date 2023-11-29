# azurerm_relay_hybrid_connection

Manages an Azure Relay Hybrid Connection.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **relay_namespace_name** | string | True | -  |  -  | The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **requires_client_authorization** | bool | False | `True`  |  -  | Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`. | 
| **user_metadata** | string | False | -  |  -  | The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored. | 

