# azurerm_spring_cloud_connection

Manages a service connector for spring cloud app.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the service connection. Changing this forces a new resource to be created. | 
| **var.spring_cloud_id** | string | True | The ID of the data source spring cloud. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres). | 
| **var.authentication** | block | True | The authentication info. An `authentication` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **spring_cloud_id** | string  | - | 
| **target_resource_id** | string  | - | 
| **authentication** | block  | - | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_connection" 
}

inputs = {
   name = "name of spring_cloud_connection" 
   spring_cloud_id = "spring_cloud_id of spring_cloud_connection" 
   target_resource_id = "target_resource_id of spring_cloud_connection" 
   authentication = "authentication of spring_cloud_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```