# azurerm_cdn_frontdoor_endpoint

Manages a Front Door (standard/premium) Endpoint.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created. | 
| **var.cdn_frontdoor_profile_id** | string | True | -  |  The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created. | 
| **var.enabled** | bool | False | `True`  |  Specifies if this Front Door Endpoint is enabled? Defaults to `true`. | 
| **var.tags** | map | False | -  |  Specifies a mapping of tags which should be assigned to the Front Door Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cdn_frontdoor_profile_id** | string  | - | 
| **enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of this Front Door Endpoint. | 
| **host_name** | string  | The host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`). | 