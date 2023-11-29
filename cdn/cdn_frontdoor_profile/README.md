# azurerm_cdn_frontdoor_profile

Manages a Front Door (standard/premium) Profile which contains a collection of endpoints and origin groups.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Front Door Profile. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  | Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 
| **var.response_timeout_seconds** | string | False | `120`  |  `16`, `240`  | Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds. | 
| **var.tags** | map | False | -  |  -  | Specifies a mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **response_timeout_seconds** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of this Front Door Profile. | 
| **resource_guid** | string  | The UUID of this Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute. | 