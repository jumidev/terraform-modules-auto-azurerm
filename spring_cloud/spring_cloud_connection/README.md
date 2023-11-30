# azurerm_spring_cloud_connection

Manages a service connector for spring cloud app.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the service connection. Changing this forces a new resource to be created. | 
| **var.spring_cloud_id** | string | True | The ID of the data source spring cloud. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres). | 
| **var.authentication** | block | True | The authentication info. An `authentication` block. | | `authentication` block structure: || 
|   type (string): (REQUIRED) The authentication type. Possible values are 'systemAssignedIdentity', 'userAssignedIdentity', 'servicePrincipalSecret', 'servicePrincipalCertificate', 'secret'. Changing this forces a new resource to be created. ||
|   name (string): Username or account name for secret auth. 'name' and 'secret' should be either both specified or both not specified when 'type' is set to 'secret'. ||
|   secret (string): Password or account key for secret auth. 'secret' and 'name' should be either both specified or both not specified when 'type' is set to 'secret'. ||
|   client_id (string): Client ID for 'userAssignedIdentity' or 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'. When 'type' is set to 'userAssignedIdentity', 'client_id' and 'subscription_id' should be either both specified or both not specified. ||
|   subscription_id (string): Subscription ID for 'userAssignedIdentity'. 'subscription_id' and 'client_id' should be either both specified or both not specified. ||
|   principal_id (string): Principal ID for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'. ||
|   certificate (string): Service principal certificate for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalCertificate'. ||
|   client_type (string): The application client type. Possible values are 'none', 'dotnet', 'java', 'python', 'go', 'php', 'ruby', 'django', 'nodejs' and 'springBoot'. Defaults to 'none'. ||
|   vnet_solution (string): The type of the VNet solution. Possible values are 'serviceEndpoint', 'privateLink'. ||
|   secret_store (block): An option to store secret value in secure place. An 'secret_store' block. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
