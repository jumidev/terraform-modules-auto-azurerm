# azurerm_cdn_frontdoor_firewall_policy

Manages a Front Door (standard/premium) Firewall Policy instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  | The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  -  | Is the Front Door Firewall Policy enabled? Defaults to `true`. | 
| **mode** | string | True | -  |  `Detection`, `Prevention`  | The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`. | 
| **redirect_url** | string | False | -  |  -  | If action type is redirect, this field represents redirect URL for the client. | 
| **custom_rule** | block | False | -  |  -  | One or more `custom_rule` blocks. | 
| **custom_block_response_status_code** | string | False | -  |  `200`, `403`, `405`, `406`, `429`  | If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`. | 
| **custom_block_response_body** | string | False | -  |  -  | If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding. | 
| **managed_rule** | block | False | -  |  -  | One or more `managed_rule` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Front Door Firewall Policy. | 

