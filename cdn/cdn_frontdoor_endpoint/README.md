# azurerm_cdn_frontdoor_endpoint

Manages a Front Door (standard/premium) Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created. | 
| **cdn_frontdoor_profile_id** | string | True | -  |  -  | The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created. | 
| **enabled** | bool | False | `True`  |  -  | Specifies if this Front Door Endpoint is enabled? Defaults to `true`. | 
| **tags** | map | False | -  |  -  | Specifies a mapping of tags which should be assigned to the Front Door Endpoint. | 

