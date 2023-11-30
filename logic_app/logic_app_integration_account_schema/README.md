# azurerm_logic_app_integration_account_schema

Manages a Logic App Integration Account Schema.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_schema" 
}

inputs = {
   name = "name of logic_app_integration_account_schema" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_schema" 
   content = "content of logic_app_integration_account_schema" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.content** | string | True | The content of the Logic App Integration Account Schema. | 
| **var.file_name** | string | False | The file name of the Logic App Integration Account Schema. | 
| **var.metadata** | string | False | The metadata of the Logic App Integration Account Schema. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Schema. | 

Additionally, all variables are provided as outputs.
