# azurerm_logic_app_integration_account_session

Manages a Logic App Integration Account Session.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.content** | string | True | The content of the Logic App Integration Account Session. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **content** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Session. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_session" 
}

inputs = {
   name = "name of logic_app_integration_account_session" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_session" 
   content = "content of logic_app_integration_account_session" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```