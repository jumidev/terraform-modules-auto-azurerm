# azurerm_static_site

Manages an App Service Static Site.->**NOTE:** After the Static Site is provisioned, you'll need to associate your target repository, which contains your web app, to the Static Site, by following the [Azure Static Site document](https://docs.microsoft.com/azure/static-web-apps/github-actions-workflow).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created. | 
| **var.sku_tier** | string | False | `Free`  |  `Free`, `Standard`  | Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`. | 
| **var.sku_size** | string | False | `Free`  |  `Free`, `Standard`  | Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.app_settings** | string | False | -  |  -  | A key-value pair of App Settings. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_tier** | string  | - | 
| **sku_size** | string  | - | 
| **identity** | block  | - | 
| **app_settings** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Static Web App. | 
| **api_key** | string  | The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action. | 
| **default_host_name** | string  | The default host name of the Static Web App. | 
| **identity** | block  | An `identity` block which contains the Managed Service Identity information for this resource. | 
| **type** | string  | The Type of Managed Identity assigned to this resource. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 