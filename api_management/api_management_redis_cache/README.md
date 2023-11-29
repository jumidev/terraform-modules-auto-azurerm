# azurerm_api_management_redis_cache

Manages a API Management Redis Cache.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created. | 
| **api_management_id** | string | True | -  |  -  | The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created. | 
| **connection_string** | string | True | -  |  -  | The connection string to the Cache for Redis. | 
| **description** | string | False | -  |  -  | The description of the API Management Redis Cache. | 
| **redis_cache_id** | string | False | -  |  -  | The resource ID of the Cache for Redis. | 
| **cache_location** | string | False | `default`  |  `default`  | The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`. | 

