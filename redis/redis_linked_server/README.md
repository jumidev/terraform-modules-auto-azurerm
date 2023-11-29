# azurerm_redis_linked_server

Manages a Redis Linked Server (ie Geo Location)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **linked_redis_cache_id** | string | True | -  |  -  | The ID of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **linked_redis_cache_location** | string | True | -  |  -  | The location of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **target_redis_cache_name** | string | True | -  |  -  | The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role) | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created. | 
| **server_role** | string | True | -  |  `Primary`, `Secondary`  | The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`. | 

