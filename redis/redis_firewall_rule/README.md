# azurerm_redis_firewall_rule

Manages a Firewall Rule associated with a Redis Cache.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Firewall Rule. Changing this forces a new resource to be created. | 
| **redis_cache_name** | string | True | -  |  -  | The name of the Redis Cache. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created. | 
| **start_ip** | string | True | -  |  -  | The lowest IP address included in the range | 
| **end_ip** | string | True | -  |  -  | The highest IP address included in the range. | 

