# azurerm_redis_firewall_rule

Manages a Firewall Rule associated with a Redis Cache.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis/redis_firewall_rule"   
}

inputs = {
   name = "The name of the Firewall Rule"   
   # redis_cache_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   start_ip = "The lowest IP address included in the range"   
   end_ip = "The highest IP address included in the range"   
}

tfstate_inputs = {
   redis_cache_name = "path/to/redis_cache_component:name"   
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
| **name** | string |  The name of the Firewall Rule. Changing this forces a new resource to be created. | 
| **redis_cache_name** | string |  The name of the Redis Cache. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created. | 
| **start_ip** | string |  The lowest IP address included in the range | 
| **end_ip** | string |  The highest IP address included in the range. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Redis Firewall Rule. | 

Additionally, all variables are provided as outputs.
