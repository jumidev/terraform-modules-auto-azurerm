# azurerm_logic_app_integration_account_map

Manages a Logic App Integration Account Map.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created. | 
| **content** | string | True | -  |  -  | The content of the Logic App Integration Account Map. | 
| **map_type** | string | True | -  |  `Liquid`, `NotSpecified`, `Xslt`, `Xslt30`, `Xslt20`  | The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`. | 
| **metadata** | string | False | -  |  -  | The metadata of the Logic App Integration Account Map. | 

