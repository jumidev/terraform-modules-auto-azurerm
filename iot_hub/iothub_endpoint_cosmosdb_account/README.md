# azurerm_iothub_endpoint_cosmosdb_account

Manages an IotHub Cosmos DB Account Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_endpoint_cosmosdb_account" 
}

inputs = {
   name = "name of iothub_endpoint_cosmosdb_account" 
   resource_group_name = "${resource_group}" 
   iothub_id = "iothub_id of iothub_endpoint_cosmosdb_account" 
   container_name = "container_name of iothub_endpoint_cosmosdb_account" 
   database_name = "database_name of iothub_endpoint_cosmosdb_account" 
   endpoint_uri = "endpoint_uri of iothub_endpoint_cosmosdb_account" 
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
| **var.name** | string |  The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created. | 
| **var.iothub_id** | string |  The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created. | 
| **var.container_name** | string |  The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created. | 
| **var.database_name** | string |  The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **var.endpoint_uri** | string |  The URI of the Cosmos DB Account. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.authentication_type** | string |  `keyBased`  |  `keyBased`, `identityBased`  |  The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **var.identity_id** | string |  -  |  -  |  The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint. | 
| **var.partition_key_name** | string |  -  |  -  |  The name of the partition key associated with the Cosmos DB Container. | 
| **var.partition_key_template** | string |  -  |  -  |  The template for generating a synthetic partition key value for use within the Cosmos DB Container. | 
| **var.primary_key** | string |  -  |  -  |  The primary key of the Cosmos DB Account. | 
| **var.secondary_key** | string |  -  |  -  |  The secondary key of the Cosmos DB Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Cosmos DB Account Endpoint. | 

Additionally, all variables are provided as outputs.
