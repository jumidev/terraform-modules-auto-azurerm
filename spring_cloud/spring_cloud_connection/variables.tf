# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the service connection. Changing this forces a new resource to be created."
  type        = string

}
variable "spring_cloud_id" {
  description = "(REQUIRED) The ID of the data source spring cloud. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are 'Postgres', 'PostgresFlexible', 'Mysql', 'Sql', 'Redis', 'RedisEnterprise', 'CosmosCassandra', 'CosmosGremlin', 'CosmosMongo', 'CosmosSql', 'CosmosTable', 'StorageBlob', 'StorageQueue', 'StorageFile', 'StorageTable', 'AppConfig', 'EventHub', 'ServiceBus', 'SignalR', 'WebPubSub', 'ConfluentKafka'. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres)."
  type        = string

}
variable "authentication" {
  description = "(REQUIRED) The authentication info. An 'authentication' block."
  type        = map(any)
}
#
# authentication block structure:
#   type (string)                 : (REQUIRED) The authentication type. Possible values are 'systemAssignedIdentity', 'userAssignedIdentity', 'servicePrincipalSecret', 'servicePrincipalCertificate', 'secret'. Changing this forces a new resource to be created.
#   name (string)                 : Username or account name for secret auth. 'name' and 'secret' should be either both specified or both not specified when 'type' is set to 'secret'.
#   secret (string)               : Password or account key for secret auth. 'secret' and 'name' should be either both specified or both not specified when 'type' is set to 'secret'.
#   client_id (string)            : Client ID for 'userAssignedIdentity' or 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'. When 'type' is set to 'userAssignedIdentity', 'client_id' and 'subscription_id' should be either both specified or both not specified.
#   subscription_id (string)      : Subscription ID for 'userAssignedIdentity'. 'subscription_id' and 'client_id' should be either both specified or both not specified.
#   principal_id (string)         : Principal ID for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalSecret' or 'servicePrincipalCertificate'.
#   certificate (string)          : Service principal certificate for 'servicePrincipal' auth. Should be specified when 'type' is set to 'servicePrincipalCertificate'.
#   client_type (string)          : The application client type. Possible values are 'none', 'dotnet', 'java', 'python', 'go', 'php', 'ruby', 'django', 'nodejs' and 'springBoot'. Defaults to 'none'.
#   vnet_solution (string)        : The type of the VNet solution. Possible values are 'serviceEndpoint', 'privateLink'.
#   secret_store (block)          : An option to store secret value in secure place. An 'secret_store' block.
#
# secret_store block structure:
#   key_vault_id (string)       : (REQUIRED) The key vault id to store secret.


