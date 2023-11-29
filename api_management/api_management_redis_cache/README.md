# azurerm_api_management_redis_cache

Manages a API Management Redis Cache.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created. | 
| **var.api_management_id** | string | True | -  |  -  | The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created. | 
| **var.connection_string** | string | True | -  |  -  | The connection string to the Cache for Redis. | 
| **var.description** | string | False | -  |  -  | The description of the API Management Redis Cache. | 
| **var.redis_cache_id** | string | False | -  |  -  | The resource ID of the Cache for Redis. | 
| **var.cache_location** | string | False | `default`  |  `default`  | The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_id** | string  | - | 
| **connection_string** | string  | - | 
| **description** | string  | - | 
| **redis_cache_id** | string  | - | 
| **cache_location** | string  | - | 
| **id** | string  | The ID of the API Management Redis Cache. | 