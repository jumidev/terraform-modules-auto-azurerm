# azurerm_logic_app_integration_account_schema

Manages a Logic App Integration Account Schema.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_integration_account_schema"   
}

inputs = {
   name = "The name which should be used for this Logic App Integration Account Schema..."   
   resource_group_name = "${resource_group}"   
   integration_account_name = "The name of the Logic App Integration Account"   
   content = "The content of the Logic App Integration Account Schema..."   
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
| **name** | string |  The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **integration_account_name** | string |  The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **content** | string |  The content of the Logic App Integration Account Schema. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **file_name** | string |  The file name of the Logic App Integration Account Schema. | 
| **metadata** | string |  The metadata of the Logic App Integration Account Schema. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Schema. | 

Additionally, all variables are provided as outputs.
