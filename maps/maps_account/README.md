# azurerm_maps_account

Manages an Azure Maps Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "maps/maps_account" 
}

inputs = {
   name = "name of maps_account" 
   resource_group_name = "${resource_group}" 
   sku_name = "sku_name of maps_account" 
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
| **var.name** | string |  -  |  The name of the Azure Maps Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group in which the Azure Maps Account should exist. Changing this forces a new resource to be created. | 
| **var.sku_name** | string |  `S0`, `S1`, `G2`  |  The SKU of the Azure Maps Account. Possible values are `S0`, `S1` and `G2`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.local_authentication_enabled** | bool |  `True`  |  Is local authentication enabled for this Azure Maps Account? When `false`, all authentication to the Azure Maps data-plane REST API is disabled, except Azure AD authentication. Defaults to `true`. | 
| **var.tags** | map |  -  |  A mapping of tags to assign to the Azure Maps Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Maps Account. | 
| **primary_access_key** | string | No  | The primary key used to authenticate and authorize access to the Maps REST APIs. | 
| **secondary_access_key** | string | No  | The secondary key used to authenticate and authorize access to the Maps REST APIs. | 
| **x_ms_client_id** | string | No  | A unique identifier for the Maps Account. | 

Additionally, all variables are provided as outputs.
