# azurerm_redis_firewall_rule

Manages a Firewall Rule associated with a Redis Cache.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "redis/redis_firewall_rule" 
}

inputs = {
   name = "name of redis_firewall_rule" 
   redis_cache_name = "redis_cache_name of redis_firewall_rule" 
   resource_group_name = "${resource_group}" 
   start_ip = "start_ip of redis_firewall_rule" 
   end_ip = "end_ip of redis_firewall_rule" 
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
| **var.name** | string |  The name of the Firewall Rule. Changing this forces a new resource to be created. | 
| **var.redis_cache_name** | string |  The name of the Redis Cache. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created. | 
| **var.start_ip** | string |  The lowest IP address included in the range | 
| **var.end_ip** | string |  The highest IP address included in the range. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Redis Firewall Rule. | 

Additionally, all variables are provided as outputs.
