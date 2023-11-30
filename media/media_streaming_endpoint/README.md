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

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.media_services_account_name** | string | True | -  |  The Media Services account name. Changing this forces a new Streaming Endpoint to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Streaming Endpoint maximum length is `24`. Changing this forces a new Streaming Endpoint to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.scale_units** | string | True | `1`, `10`  |  The number of scale units. To create a Standard Streaming Endpoint set `0`. For Premium Streaming Endpoint valid values are between `1` and `10`. | 
| **var.access_control** | block | False | -  |  A `access_control` block. | 
| **var.auto_start_enabled** | bool | False | -  |  The flag indicates if the resource should be automatically started on creation. | 
| **var.cdn_enabled** | bool | False | -  |  The CDN enabled flag. | 
| **var.cdn_profile** | string | False | -  |  The CDN profile name. | 
| **var.cdn_provider** | string | False | -  |  The CDN provider name. Supported value are `StandardVerizon`,`PremiumVerizon` and `StandardAkamai` | 
| **var.cross_site_access_policy** | block | False | -  |  A `cross_site_access_policy` block. | 
| **var.custom_host_names** | string | False | -  |  The custom host names of the streaming endpoint. | 
| **var.description** | string | False | -  |  The streaming endpoint description. | 
| **var.max_cache_age_seconds** | int | False | -  |  Max cache age in seconds. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Streaming Endpoint. | 

### `access_control` block structure

> `akamai_signature_header_authentication_key` (block): One or more 'akamai_signature_header_authentication_key' blocks.\
> `ip_allow` (block): A 'ip_allow' block.\

### `cross_site_access_policy` block structure

> `client_access_policy` (string): The content of 'clientaccesspolicy.xml' used by Silverlight.\
> `cross_domain_policy` (string): The content of 'crossdomain.xml' used by Silverlight.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Endpoint. | 
| **host_name** | string | No  | The host name of the Streaming Endpoint. | 
| **sku** | block | No  | A `sku` block defined as below. | 
| **name** | string | No  | The sku name of Streaming Endpoint. | 
| **capacity** | string | No  | The sku capacity of Streaming Endpoint. | 

Additionally, all variables are provided as outputs.
