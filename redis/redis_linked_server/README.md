# azurerm_redis_linked_server

Manages a Redis Linked Server (ie Geo Location)

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "redis/redis_linked_server" 
}

inputs = {
   linked_redis_cache_id = "linked_redis_cache_id of redis_linked_server" 
   linked_redis_cache_location = "linked_redis_cache_location of redis_linked_server" 
   target_redis_cache_name = "target_redis_cache_name of redis_linked_server" 
   resource_group_name = "${resource_group}" 
   server_role = "server_role of redis_linked_server" 
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
| **var.linked_redis_cache_id** | string | True | -  |  The ID of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **var.linked_redis_cache_location** | string | True | -  |  The location of the linked Redis cache. Changing this forces a new Redis to be created. | 
| **var.target_redis_cache_name** | string | True | -  |  The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role) | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created. | 
| **var.server_role** | string | True | `Primary`, `Secondary`  |  The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Redis. | 
| **name** | string | No  | The name of the linked server. | 

Additionally, all variables are provided as outputs.
