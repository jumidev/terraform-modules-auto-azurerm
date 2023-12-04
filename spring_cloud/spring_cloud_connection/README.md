# azurerm_spring_cloud_connection

Manages a service connector for spring cloud app.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_connection" 
}

inputs = {
   name = "name of spring_cloud_connection" 
   spring_cloud_id = "spring_cloud_id of spring_cloud_connection" 
   target_resource_id = "target_resource_id of spring_cloud_connection" 
   authentication = {
      example_authentication = {
         type = "..."   
         subscription_id = "..."   
      }
  
   }
 
}

tfstate_inputs = {
   authentication.example_authentication.subscription_id = "path/to/subscription_component:subscription_id" 
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
| **name** | string |  The name of the service connection. Changing this forces a new resource to be created. | 
| **spring_cloud_id** | string |  The ID of the data source spring cloud. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres). | 
| **authentication** | [block](#authentication-block-structure) |  The authentication info. An `authentication` block. | 

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The authentication type. Possible values are 'systemAssignedIdentity', 'userAssignedIdentity', 'servicePrincipalSecret', 'servicePrincipalCertificate', 'secret'. Changing this forces a new resource to be created. |
| `secret` | string | No | - | Password or account key for secret auth. 'secret' and 'name' should be either both specified or both not specified when 'type' is set to 'secret'. |
| `client_id` | string | No | - | Client ID for 'userAssignedIdentity' or 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'. When 'type' is set to 'userAssignedIdentity', 'client_id' and 'subscription_id' should be either both specified or both not specified. |
| `subscription_id` | string | No | - | Subscription ID for 'userAssignedIdentity'. 'subscription_id' and 'client_id' should be either both specified or both not specified. |
| `principal_id` | string | No | - | Principal ID for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'. |
| `certificate` | string | No | - | Service principal certificate for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalCertificate'. |
| `client_type` | string | No | none | The application client type. Possible values are 'none', 'dotnet', 'java', 'python', 'go', 'php', 'ruby', 'django', 'nodejs' and 'springBoot'. Defaults to 'none'. |
| `vnet_solution` | string | No | - | The type of the VNet solution. Possible values are 'serviceEndpoint', 'privateLink'. |
| `secret_store` | [block](#authentication-block-structure) | No | - | An option to store secret value in secure place. An 'secret_store' block. |

### `secret_store` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_id` | string | Yes | - | The key vault id to store secret. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
