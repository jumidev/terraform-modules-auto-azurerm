# azurerm_iothub_endpoint_cosmosdb_account

Manages an IotHub Cosmos DB Account Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created. | 
| **iothub_id** | string | True | -  |  -  | The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created. | 
| **container_name** | string | True | -  |  -  | The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **endpoint_uri** | string | True | -  |  -  | The URI of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **authentication_type** | string | False | `keyBased`  |  `keyBased`, `identityBased`  | The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **identity_id** | string | False | -  |  -  | The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint. | 
| **partition_key_name** | string | False | -  |  -  | The name of the partition key associated with the Cosmos DB Container. | 
| **partition_key_template** | string | False | -  |  -  | The template for generating a synthetic partition key value for use within the Cosmos DB Container. | 
| **primary_key** | string | False | -  |  -  | The primary key of the Cosmos DB Account. | 
| **secondary_key** | string | False | -  |  -  | The secondary key of the Cosmos DB Account. | 

