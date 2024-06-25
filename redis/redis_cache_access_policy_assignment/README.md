# azurerm_redis_cache_access_policy_assignment



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis/redis_cache_access_policy_assignment"   
}
inputs = {
   name = "The name of the Redis Cache Access Policy Assignment..."   
   # redis_cache_id → set in component_inputs
   access_policy_name = "The name of the Access Policy to be assigned"   
   object_id = "The principal ID to be assigned the Access Policy"   
   object_id_alias = "The alias of the principal ID"   
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
| **name** | string |  The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created. | 
| **redis_cache_id** | string |  The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created. | 
| **access_policy_name** | string |  The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created. | 
| **object_id** | string |  The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created. | 
| **object_id_alias** | string |  The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **object_id_alias** | string | No  | The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Redis Cache Access Policy Assignment. | 

Additionally, all variables are provided as outputs.
