# azurerm_logic_app_integration_account_map

Manages a Logic App Integration Account Map.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_integration_account_map"   
}

inputs = {
   name = "The name which should be used for this Logic App Integration Account Map..."   
   resource_group_name = "${resource_group}"   
   integration_account_name = "The name of the Logic App Integration Account"   
   content = "The content of the Logic App Integration Account Map..."   
   map_type = "The type of the Logic App Integration Account Map"   
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
| **name** | string |  -  |  The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created. | 
| **integration_account_name** | string |  -  |  The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created. | 
| **content** | string |  -  |  The content of the Logic App Integration Account Map. | 
| **map_type** | string |  `Liquid`, `NotSpecified`, `Xslt`, `Xslt30`, `Xslt20`  |  The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  The metadata of the Logic App Integration Account Map. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Map. | 

Additionally, all variables are provided as outputs.
