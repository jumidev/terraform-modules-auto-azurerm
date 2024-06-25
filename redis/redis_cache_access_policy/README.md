# azurerm_redis_cache_access_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis/redis_cache_access_policy"   
}
inputs = {
   name = "The name of the Redis Cache Access Policy"   
   # redis_cache_id → set in component_inputs
   permissions = "Permissions that are going to be assigned to this Redis Cache Access Policy..."   
}
component_inputs = {
   redis_cache_id = "path/to/redis_cache_component:id"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created. | 
| **redis_cache_id** | string |  The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created. | 
| **permissions** | string |  Permissions that are going to be assigned to this Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **permissions** | string | No  | Permissions that are going to be assigned to this Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Redis Cache Access Policy. | 

Additionally, all variables are provided as outputs.
