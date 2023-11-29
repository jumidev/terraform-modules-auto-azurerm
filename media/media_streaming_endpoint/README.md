# azurerm_media_streaming_endpoint

Manages a Streaming Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Streaming Endpoint to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Streaming Endpoint maximum length is `24`. Changing this forces a new Streaming Endpoint to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Streaming Endpoint should exist. Changing this forces a new Streaming Endpoint to be created. | 
| **scale_units** | string | True | -  |  `1`, `10`  | The number of scale units. To create a Standard Streaming Endpoint set `0`. For Premium Streaming Endpoint valid values are between `1` and `10`. | 
| **access_control** | block | False | -  |  -  | A `access_control` block. | 
| **auto_start_enabled** | bool | False | -  |  -  | The flag indicates if the resource should be automatically started on creation. | 
| **cdn_enabled** | bool | False | -  |  -  | The CDN enabled flag. | 
| **cdn_profile** | string | False | -  |  -  | The CDN profile name. | 
| **cdn_provider** | string | False | -  |  -  | The CDN provider name. Supported value are `StandardVerizon`,`PremiumVerizon` and `StandardAkamai` | 
| **cross_site_access_policy** | block | False | -  |  -  | A `cross_site_access_policy` block. | 
| **custom_host_names** | string | False | -  |  -  | The custom host names of the streaming endpoint. | 
| **description** | string | False | -  |  -  | The streaming endpoint description. | 
| **max_cache_age_seconds** | int | False | -  |  -  | Max cache age in seconds. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Streaming Endpoint. | 

