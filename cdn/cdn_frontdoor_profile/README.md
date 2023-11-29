# azurerm_cdn_frontdoor_profile

Manages a Front Door (standard/premium) Profile which contains a collection of endpoints and origin groups.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Front Door Profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  | Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 
| **response_timeout_seconds** | string | False | `120`  |  `16`, `240`  | Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds. | 
| **tags** | map | False | -  |  -  | Specifies a mapping of tags to assign to the resource. | 

