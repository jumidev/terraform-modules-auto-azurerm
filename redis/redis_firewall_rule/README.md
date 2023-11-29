# azurerm_redis_firewall_rule

Manages a Firewall Rule associated with a Redis Cache.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.redis_cache_name** | string | True | The name of the Redis Cache. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created. | 
| **var.start_ip** | string | True | The lowest IP address included in the range | 
| **var.end_ip** | string | True | The highest IP address included in the range. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **redis_cache_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **start_ip** | string  | - | 
| **end_ip** | string  | - | 
| **id** | string  | The ID of the Redis Firewall Rule. | 