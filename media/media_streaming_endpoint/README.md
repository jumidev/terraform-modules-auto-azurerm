# azurerm_media_streaming_endpoint

Manages a Streaming Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_streaming_endpoint" 
}

inputs = {
   location = "${location}" 
   media_services_account_name = "media_services_account_name of media_streaming_endpoint" 
   name = "name of media_streaming_endpoint" 
   resource_group_name = "${resource_group}" 
   scale_units = "scale_units of media_streaming_endpoint" 
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
| **var.location** | string |  -  |  The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.media_services_account_name** | string |  -  |  The Media Services account name. Changing this forces a new Streaming Endpoint to be created. | 
| **var.name** | string |  -  |  The name which should be used for this Streaming Endpoint maximum length is `24`. Changing this forces a new Streaming Endpoint to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.scale_units** | string |  `1`, `10`  |  The number of scale units. To create a Standard Streaming Endpoint set `0`. For Premium Streaming Endpoint valid values are between `1` and `10`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.access_control** | block |  A `access_control` block. | 
| **var.auto_start_enabled** | bool |  The flag indicates if the resource should be automatically started on creation. | 
| **var.cdn_enabled** | bool |  The CDN enabled flag. | 
| **var.cdn_profile** | string |  The CDN profile name. | 
| **var.cdn_provider** | string |  The CDN provider name. Supported value are `StandardVerizon`,`PremiumVerizon` and `StandardAkamai` | 
| **var.cross_site_access_policy** | block |  A `cross_site_access_policy` block. | 
| **var.custom_host_names** | string |  The custom host names of the streaming endpoint. | 
| **var.description** | string |  The streaming endpoint description. | 
| **var.max_cache_age_seconds** | int |  Max cache age in seconds. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Streaming Endpoint. | 

### `access_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `akamai_signature_header_authentication_key` | block | No | - | One or more 'akamai_signature_header_authentication_key' blocks. |
| `ip_allow` | block | No | - | A 'ip_allow' block. |

### `cross_site_access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_access_policy` | string | No | - | The content of 'clientaccesspolicy.xml' used by Silverlight. |
| `cross_domain_policy` | string | No | - | The content of 'crossdomain.xml' used by Silverlight. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Endpoint. | 
| **host_name** | string | No  | The host name of the Streaming Endpoint. | 
| **sku** | block | No  | A `sku` block defined as below. | 
| **name** | string | No  | The sku name of Streaming Endpoint. | 
| **capacity** | string | No  | The sku capacity of Streaming Endpoint. | 

Additionally, all variables are provided as outputs.
