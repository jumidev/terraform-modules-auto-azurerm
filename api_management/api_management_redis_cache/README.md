# azurerm_api_management_redis_cache

Manages a API Management Redis Cache.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_redis_cache" 
}

inputs = {
   name = "name of api_management_redis_cache" 
   api_management_id = "api_management_id of api_management_redis_cache" 
   connection_string = "connection_string of api_management_redis_cache" 
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
| **var.name** | string |  The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created. | 
| **var.api_management_id** | string |  The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created. | 
| **var.connection_string** | string |  The connection string to the Cache for Redis. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.description** | string |  -  |  -  |  The description of the API Management Redis Cache. | 
| **var.redis_cache_id** | string |  -  |  -  |  The resource ID of the Cache for Redis. | 
| **var.cache_location** | string |  `default`  |  `default`  |  The location where to use cache from. Possible values are `default` and valid Azure regions. Defaults to `default`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Redis Cache. | 

Additionally, all variables are provided as outputs.
