# azurerm_cdn_frontdoor_route

Manages a Front Door (standard/premium) Route.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_route" 
}

inputs = {
   name = "name of cdn_frontdoor_route" 
   cdn_frontdoor_endpoint_id = "cdn_frontdoor_endpoint_id of cdn_frontdoor_route" 
   cdn_frontdoor_origin_group_id = "cdn_frontdoor_origin_group_id of cdn_frontdoor_route" 
   cdn_frontdoor_origin_ids = "cdn_frontdoor_origin_ids of cdn_frontdoor_route" 
   patterns_to_match = "patterns_to_match of cdn_frontdoor_route" 
   supported_protocols = "supported_protocols of cdn_frontdoor_route" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created. | 
| **var.cdn_frontdoor_endpoint_id** | string | True | -  |  -  |  The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created. | 
| **var.cdn_frontdoor_origin_group_id** | string | True | -  |  -  |  The resource ID of the Front Door Origin Group where this Front Door Route should be created. | 
| **var.cdn_frontdoor_origin_ids** | list | True | -  |  -  |  One or more Front Door Origin resource IDs that this Front Door Route will link to. | 
| **var.forwarding_protocol** | string | False | `MatchRequest`  |  `HttpOnly`, `HttpsOnly`, `MatchRequest`  |  The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`. | 
| **var.patterns_to_match** | string | True | -  |  -  |  The route patterns of the rule. | 
| **var.supported_protocols** | string | True | -  |  `Http`, `Https`  |  One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`. | 
| **var.cache** | block | False | -  |  -  |  A `cache` block. | 
| **var.cdn_frontdoor_custom_domain_ids** | string | False | -  |  -  |  The IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 
| **var.cdn_frontdoor_origin_path** | string | False | -  |  -  |  A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`). | 
| **var.cdn_frontdoor_rule_set_ids** | list | False | -  |  -  |  A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route. | 
| **var.enabled** | bool | False | `True`  |  `true`, `false`  |  Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **var.https_redirect_enabled** | bool | False | `True`  |  `true`, `false`  |  Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`. | 
| **var.link_to_default_domain** | bool | False | `True`  |  `true`, `false`  |  Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`. | 

### `cache` block structure

> `query_string_caching_behavior` (string): Defines how the Front Door Route will cache requests that include query strings. Possible values include 'IgnoreQueryString', 'IgnoreSpecifiedQueryStrings', 'IncludeSpecifiedQueryStrings' or 'UseQueryString'. Defaults to 'IgnoreQueryString'.
> `query_strings` (string): Query strings to include or ignore.
> `compression_enabled` (bool): Is content compression enabled? Possible values are 'true' or 'false'. Defaults to 'false'.
> `content_types_to_compress` (string): A list of one or more 'Content types' (formerly known as 'MIME types') to compress. Possible values include 'application/eot', 'application/font', 'application/font-sfnt', 'application/javascript', 'application/json', 'application/opentype', 'application/otf', 'application/pkcs7-mime', 'application/truetype', 'application/ttf', 'application/vnd.ms-fontobject', 'application/xhtml+xml', 'application/xml', 'application/xml+rss', 'application/x-font-opentype', 'application/x-font-truetype', 'application/x-font-ttf', 'application/x-httpd-cgi', 'application/x-mpegurl', 'application/x-opentype', 'application/x-otf', 'application/x-perl', 'application/x-ttf', 'application/x-javascript', 'font/eot', 'font/ttf', 'font/otf', 'font/opentype', 'image/svg+xml', 'text/css', 'text/csv', 'text/html', 'text/javascript', 'text/js', 'text/plain', 'text/richtext', 'text/tab-separated-values', 'text/xml', 'text/x-script', 'text/x-component' or 'text/x-java-source'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Route. | 

Additionally, all variables are provided as outputs.
