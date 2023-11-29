# azurerm_maps_account

Manages an Azure Maps Account.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Azure Maps Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `S0`, `S1`, `G2`  |  The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created. | 
| **var.local_authentication_enabled** | bool | False | `True`  |  -  |  Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the Azure Maps Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **local_authentication_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Azure Maps Account. | 
| **primary_access_key** | string  | The primary key used to authenticate and authorize access to the Maps REST APIs. | 
| **secondary_access_key** | string  | The secondary key used to authenticate and authorize access to the Maps REST APIs. | 
| **x_ms_client_id** | string  | A unique identifier for the Maps Account. | 