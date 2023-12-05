# azurerm_relay_hybrid_connection

Manages an Azure Relay Hybrid Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/relay_hybrid_connection"   
}

inputs = {
   name = "Specifies the name of the Azure Relay Hybrid Connection..."   
   resource_group_name = "${resource_group}"   
   relay_namespace_name = "The name of the Azure Relay in which to create the Azure Relay Hybrid Connection..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 
| **relay_namespace_name** | string |  The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **requires_client_authorization** | bool |  `True`  |  Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`. | 
| **user_metadata** | string |  -  |  The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Relay Hybrid Connection. | 

Additionally, all variables are provided as outputs.
