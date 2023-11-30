# azurerm_function_app_connection

Manages a service connector for function app.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the service connection. Changing this forces a new resource to be created. | 
| **var.function_app_id** | string | True | The ID of the data source function app. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres). | 
| **var.authentication** | block | True | The authentication info. An `authentication` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **function_app_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **authentication** | block  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app_connection" 
}

inputs = {
   name = "name of function_app_connection" 
   function_app_id = "function_app_id of function_app_connection" 
   target_resource_id = "target_resource_id of function_app_connection" 
   authentication = "authentication of function_app_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```