# azurerm_cdn_frontdoor_route

Manages a Front Door (standard/premium) Route.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cdn/cdn_frontdoor_route" 
}

inputs = {
   name = "name of cdn_frontdoor_route" 
   # cdn_frontdoor_endpoint_id → set in tfstate_inputs
   # cdn_frontdoor_origin_group_id → set in tfstate_inputs
   # cdn_frontdoor_origin_ids → set in tfstate_inputs
   patterns_to_match = "patterns_to_match of cdn_frontdoor_route" 
   supported_protocols = "supported_protocols of cdn_frontdoor_route" 
}

tfstate_inputs = {
   cdn_frontdoor_endpoint_id = "path/to/cdn_frontdoor_endpoint_component:id" 
   cdn_frontdoor_origin_group_id = "path/to/cdn_frontdoor_origin_group_component:id" 
   cdn_frontdoor_origin_ids = "path/to/cdn_frontdoor_origin_component:id" 
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
| **name** | string |  -  |  The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_endpoint_id** | string |  -  |  The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_origin_group_id** | string |  -  |  The resource ID of the Front Door Origin Group where this Front Door Route should be created. | 
| **cdn_frontdoor_origin_ids** | list |  -  |  One or more Front Door Origin resource IDs that this Front Door Route will link to. | 
| **patterns_to_match** | string |  -  |  The route patterns of the rule. | 
| **supported_protocols** | string |  `Http`, `Https`  |  One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **forwarding_protocol** | string |  `MatchRequest`  |  `HttpOnly`, `HttpsOnly`, `MatchRequest`  |  The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`. | 
| **cache** | [block](#cache-block-structure) |  -  |  -  |  A `cache` block. | 
| **cdn_frontdoor_custom_domain_ids** | string |  -  |  -  |  The IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 
| **cdn_frontdoor_origin_path** | string |  -  |  -  |  A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`). | 
| **cdn_frontdoor_rule_set_ids** | list |  -  |  -  |  A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route. | 
| **enabled** | bool |  `True`  |  `true`, `false`  |  Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **https_redirect_enabled** | bool |  `True`  |  `true`, `false`  |  Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`. | 
| **link_to_default_domain** | bool |  `True`  |  `true`, `false`  |  Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`. | 

### `cache` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `query_string_caching_behavior` | string | No | IgnoreQueryString | Defines how the Front Door Route will cache requests that include query strings. Possible values include 'IgnoreQueryString', 'IgnoreSpecifiedQueryStrings', 'IncludeSpecifiedQueryStrings' or 'UseQueryString'. Defaults to 'IgnoreQueryString'. |
| `query_strings` | string | No | - | Query strings to include or ignore. |
| `compression_enabled` | bool | No | False | Is content compression enabled? Possible values are 'true' or 'false'. Defaults to 'false'. |
| `content_types_to_compress` | string | No | - | A list of one or more 'Content types' (formerly known as 'MIME types') to compress. Possible values include 'application/eot', 'application/font', 'application/font-sfnt', 'application/javascript', 'application/json', 'application/opentype', 'application/otf', 'application/pkcs7-mime', 'application/truetype', 'application/ttf', 'application/vnd.ms-fontobject', 'application/xhtml+xml', 'application/xml', 'application/xml+rss', 'application/x-font-opentype', 'application/x-font-truetype', 'application/x-font-ttf', 'application/x-httpd-cgi', 'application/x-mpegurl', 'application/x-opentype', 'application/x-otf', 'application/x-perl', 'application/x-ttf', 'application/x-javascript', 'font/eot', 'font/ttf', 'font/otf', 'font/opentype', 'image/svg+xml', 'text/css', 'text/csv', 'text/html', 'text/javascript', 'text/js', 'text/plain', 'text/richtext', 'text/tab-separated-values', 'text/xml', 'text/x-script', 'text/x-component' or 'text/x-java-source'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Front Door Route. | 

Additionally, all variables are provided as outputs.
