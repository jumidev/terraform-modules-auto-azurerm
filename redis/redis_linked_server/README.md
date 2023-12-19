# azurerm_redis_linked_server

Manages a Redis Linked Server (ie Geo Location)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis/redis_linked_server"   
}

inputs = {
   # linked_redis_cache_id → set in component_inputs
   linked_redis_cache_location = "The location of the linked Redis cache"   
   target_redis_cache_name = "The name of Redis cache to link with"   
   resource_group_name = "${resource_group}"   
   server_role = "The role of the linked Redis cache (eg "Secondary")..."   
}

component_inputs = {
   linked_redis_cache_id = "path/to/redis_cache_component:id"   
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
| **linked_redis_cache_id** | string |  -  |  The ID of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **linked_redis_cache_location** | string |  -  |  The location of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **target_redis_cache_name** | string |  -  |  The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role) | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created. | 
| **server_role** | string |  `Primary`, `Secondary`  |  The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Redis. | 
| **name** | string | No  | The name of the linked server. | 
| **geo_replicated_primary_host_name** | string | No  | The geo-replicated primary hostname for this linked server. | 

Additionally, all variables are provided as outputs.
