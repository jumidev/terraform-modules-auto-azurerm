# azurerm_media_streaming_endpoint

Manages a Streaming Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Streaming Endpoint to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Streaming Endpoint maximum length is `24`. Changing this forces a new Streaming Endpoint to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **var.scale_units** | string | True | -  |  `1`, `10`  | The number of scale units. To create a Standard Streaming Endpoint set `0`. For Premium Streaming Endpoint valid values are between `1` and `10`. | 
| **var.access_control** | block | False | -  |  -  | A `access_control` block. | 
| **var.auto_start_enabled** | bool | False | -  |  -  | The flag indicates if the resource should be automatically started on creation. | 
| **var.cdn_enabled** | bool | False | -  |  -  | The CDN enabled flag. | 
| **var.cdn_profile** | string | False | -  |  -  | The CDN profile name. | 
| **var.cdn_provider** | string | False | -  |  -  | The CDN provider name. Supported value are `StandardVerizon`,`PremiumVerizon` and `StandardAkamai` | 
| **var.cross_site_access_policy** | block | False | -  |  -  | A `cross_site_access_policy` block. | 
| **var.custom_host_names** | string | False | -  |  -  | The custom host names of the streaming endpoint. | 
| **var.description** | string | False | -  |  -  | The streaming endpoint description. | 
| **var.max_cache_age_seconds** | int | False | -  |  -  | Max cache age in seconds. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Streaming Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **scale_units** | string  | - | 
| **access_control** | block  | - | 
| **auto_start_enabled** | bool  | - | 
| **cdn_enabled** | bool  | - | 
| **cdn_profile** | string  | - | 
| **cdn_provider** | string  | - | 
| **cross_site_access_policy** | block  | - | 
| **custom_host_names** | string  | - | 
| **description** | string  | - | 
| **max_cache_age_seconds** | int  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Streaming Endpoint. | 
| **host_name** | string  | The host name of the Streaming Endpoint. | 
| **sku** | block  | A `sku` block defined as below. | 
| **name** | string  | The sku name of Streaming Endpoint. | 
| **capacity** | string  | The sku capacity of Streaming Endpoint. | 