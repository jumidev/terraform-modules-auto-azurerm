# azurerm_static_site

Manages an App Service Static Site.->**NOTE:** After the Static Site is provisioned, you'll need to associate your target repository, which contains your web app, to the Static Site, by following the [Azure Static Site document](https://docs.microsoft.com/azure/static-web-apps/github-actions-workflow).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created. | 
| **sku_tier** | string | False | `Free`  |  `Free`, `Standard`  | Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`. | 
| **sku_size** | string | False | `Free`  |  `Free`, `Standard`  | Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **app_settings** | string | False | -  |  -  | A key-value pair of App Settings. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

