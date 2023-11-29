# azurerm_logic_app_integration_account_map

Manages a Logic App Integration Account Map.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created. | 
| **var.integration_account_name** | string | True | -  |  The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created. | 
| **var.content** | string | True | -  |  The content of the Logic App Integration Account Map. | 
| **var.map_type** | string | True | `Liquid`, `NotSpecified`, `Xslt`, `Xslt30`, `Xslt20`  |  The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`. | 
| **var.metadata** | string | False | -  |  The metadata of the Logic App Integration Account Map. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **content** | string  | - | 
| **map_type** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Map. | 