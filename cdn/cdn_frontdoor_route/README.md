# azurerm_cdn_frontdoor_route



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_route"   
}

inputs = {
   name = "The name which should be used for this Front Door Route..."   
   # cdn_frontdoor_endpoint_id → set in component_inputs
   # cdn_frontdoor_origin_group_id → set in component_inputs
   # cdn_frontdoor_origin_ids → set in component_inputs
   patterns_to_match = "The route patterns of the rule"   
   supported_protocols = "One or more Protocols supported by this Front Door Route..."   
}

component_inputs = {
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
## Associated component


### `cdn_frontdoor_custom_domain_id` 

- If set to a valid `azurerm_cdn_frontdoor_custom_domain` `id`, makes a **azurerm_cdn_frontdoor_custom_domain_association** - 

Example component snippet (**See also** [cdn/cdn_frontdoor_custom_domain](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/cdn/cdn_frontdoor_custom_domain))

```hcl
component_inputs = {
   cdn_frontdoor_custom_domain_id = "path/to/cdn_frontdoor_custom_domain_component:id"
}
```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_endpoint_id** | string |  -  |  The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created. | 
| **cdn_frontdoor_origin_group_id** | string |  -  |  The resource ID of the Front Door Origin Group where this Front Door Route should be created. | 
| **cdn_frontdoor_origin_ids** | string |  -  |  One or more Front Door Origin resource IDs that this Front Door Route will link to. | 
| **patterns_to_match** | string |  -  |  The route patterns of the rule. | 
| **supported_protocols** | string |  `Http`, `Https`  |  One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`. ~> **NOTE:** If `https_redirect_enabled` is set to `true` the `supported_protocols` field must contain both `Http` and `Https` values. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **forwarding_protocol** | string |  `MatchRequest`  |  `HttpOnly`, `HttpsOnly`, `MatchRequest`  |  The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`. | 
| **cache** | [block](#cache-block-structure) |  -  |  -  |  A `cache` block. ~> **NOTE:** To disable caching, do not provide the `cache` block in the configuration file. | 
| **cdn_frontdoor_custom_domain_ids** | string |  -  |  -  |  The IDs of the Front Door Custom Domains which are associated with this Front Door Route. | 
| **cdn_frontdoor_origin_path** | string |  -  |  `contoso.cloudapp.net/originpath`  |  A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`). | 
| **cdn_frontdoor_rule_set_ids** | list |  -  |  -  |  A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route. | 
| **enabled** | bool |  `True`  |  `true`, `false`  |  Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`. | 
| **https_redirect_enabled** | bool |  `True`  |  `true`, `false`  |  Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`. ~> **NOTE:** The `https_redirect_enabled` rule is the first rule that will be executed. | 
| **link_to_default_domain** | bool |  `True`  |  `true`, `false`  |  Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`. | 

### `cache` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `query_string_caching_behavior` | string | No | IgnoreQueryString | Defines how the Front Door Route will cache requests that include query strings. Possible values include 'IgnoreQueryString', 'IgnoreSpecifiedQueryStrings', 'IncludeSpecifiedQueryStrings' or 'UseQueryString'. Defaults to 'IgnoreQueryString'. ~> **NOTE:** The value of the 'query_string_caching_behavior' determines if the 'query_strings' field will be used as an include list or an ignore list. |
| `query_strings` | string | No | - | Query strings to include or ignore. |
| `compression_enabled` | bool | No | False | Is content compression enabled? Possible values are 'true' or 'false'. Defaults to 'false'. ~> **NOTE:** Content won't be compressed when the requested content is smaller than '1 KB' or larger than '8 MB'(inclusive). |
| `content_types_to_compress` | list | No | - | A list of one or more 'Content types' (formerly known as 'MIME types') to compress. Possible values include 'application/eot', 'application/font', 'application/font-sfnt', 'application/javascript', 'application/json', 'application/opentype', 'application/otf', 'application/pkcs7-mime', 'application/truetype', 'application/ttf', 'application/vnd.ms-fontobject', 'application/xhtml+xml', 'application/xml', 'application/xml+rss', 'application/x-font-opentype', 'application/x-font-truetype', 'application/x-font-ttf', 'application/x-httpd-cgi', 'application/x-mpegurl', 'application/x-opentype', 'application/x-otf', 'application/x-perl', 'application/x-ttf', 'application/x-javascript', 'font/eot', 'font/ttf', 'font/otf', 'font/opentype', 'image/svg+xml', 'text/css', 'text/csv', 'text/html', 'text/javascript', 'text/js', 'text/plain', 'text/richtext', 'text/tab-separated-values', 'text/xml', 'text/x-script', 'text/x-component' or 'text/x-java-source'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **content_types_to_compress** | list | No  | A list of one or more `Content types` (formerly known as `MIME types`) to compress. Possible values include `application/eot`, `application/font`, `application/font-sfnt`, `application/javascript`, `application/json`, `application/opentype`, `application/otf`, `application/pkcs7-mime`, `application/truetype`, `application/ttf`, `application/vnd.ms-fontobject`, `application/xhtml+xml`, `application/xml`, `application/xml+rss`, `application/x-font-opentype`, `application/x-font-truetype`, `application/x-font-ttf`, `application/x-httpd-cgi`, `application/x-mpegurl`, `application/x-opentype`, `application/x-otf`, `application/x-perl`, `application/x-ttf`, `application/x-javascript`, `font/eot`, `font/ttf`, `font/otf`, `font/opentype`, `image/svg+xml`, `text/css`, `text/csv`, `text/html`, `text/javascript`, `text/js`, `text/plain`, `text/richtext`, `text/tab-separated-values`, `text/xml`, `text/x-script`, `text/x-component` or `text/x-java-source`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Front Door Route. | 

Additionally, all variables are provided as outputs.
