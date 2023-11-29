# azurerm_cdn_frontdoor_route

Manages a Front Door (standard/premium) Route.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_endpoint_id** | string | True | -  |  -  | The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_origin_group_id** | string | True | -  |  -  | The resource ID of the Front Door Origin Group where this Front Door Route should be created. | 
| **cdn_frontdoor_origin_ids** | list | True | -  |  -  | One or more Front Door Origin resource IDs that this Front Door Route will link to. | 
| **forwarding_protocol** | string | False | `MatchRequest`  |  `HttpOnly`, `HttpsOnly`, `MatchRequest`  | The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`. | 
| **patterns_to_match** | string | True | -  |  -  | The route patterns of the rule. | 
| **supported_protocols** | string | True | -  |  `Http`, `Https`  | One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`. | 
| **cache** | block | False | -  |  -  | A `cache` block. | 
| **cdn_frontdoor_custom_domain_ids** | string | False | -  |  -  | The IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 
| **cdn_frontdoor_origin_path** | string | False | -  |  -  | A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`). | 
| **cdn_frontdoor_rule_set_ids** | list | False | -  |  -  | A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route. | 
| **enabled** | bool | False | `True`  |  `true`, `false`  | Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **https_redirect_enabled** | bool | False | `True`  |  `true`, `false`  | Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`. | 
| **link_to_default_domain** | bool | False | `True`  |  `true`, `false`  | Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`. | 

