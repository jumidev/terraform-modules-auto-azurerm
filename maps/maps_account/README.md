# azurerm_maps_account

Manages an Azure Maps Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Azure Maps Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `S0`, `S1`, `G2`  | The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Azure Maps Account. | 

