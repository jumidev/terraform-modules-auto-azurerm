# azurerm_spring_cloud_connection

Manages a service connector for spring cloud app.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the service connection. Changing this forces a new resource to be created. | 
| **spring_cloud_id** | string | True | -  |  -  | The ID of the data source spring cloud. Changing this forces a new resource to be created. | 
| **target_resource_id** | string | True | -  |  -  | The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres). | 
| **authentication** | block | True | -  |  -  | The authentication info. An `authentication` block. | 

