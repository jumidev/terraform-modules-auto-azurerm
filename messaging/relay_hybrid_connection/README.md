# azurerm_relay_hybrid_connection

Manages an Azure Relay Hybrid Connection.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **var.relay_namespace_name** | string | True | -  |  The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **var.requires_client_authorization** | bool | False | `True`  |  Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`. | 
| **var.user_metadata** | string | False | -  |  The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **relay_namespace_name** | string  | - | 
| **requires_client_authorization** | bool  | - | 
| **user_metadata** | string  | - | 
| **id** | string  | The ID of the Relay Hybrid Connection. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/relay_hybrid_connection" 
}

inputs = {
   name = "name of relay_hybrid_connection" 
   resource_group_name = "${resource_group}" 
   relay_namespace_name = "relay_namespace_name of relay_hybrid_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```