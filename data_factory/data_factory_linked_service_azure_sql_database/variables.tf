# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service Azure SQL Database. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "connection_string" {
  description = "The connection string in which to authenticate with Azure SQL Database. Exactly one of either 'connection_string' or 'key_vault_connection_string' is required."
  type        = string
  default     = null
}
variable "use_managed_identity" {
  description = "Whether to use the Data Factory's managed identity to authenticate against the Azure SQL Database. Incompatible with 'service_principal_id' and 'service_principal_key'"
  type        = bool
  default     = null
}
variable "service_principal_id" {
  description = "The service principal id in which to authenticate against the Azure SQL Database. Required if 'service_principal_key' is set."
  type        = string
  default     = null
}
variable "service_principal_key" {
  description = "The service principal key in which to authenticate against the Azure SQL Database. Required if 'service_principal_id' is set."
  type        = string
  default     = null
}
variable "tenant_id" {
  description = "The tenant id or name in which to authenticate against the Azure SQL Database."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Linked Service Azure SQL Database."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service Azure SQL Database."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service Azure SQL Database."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service Azure SQL Database."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service Azure SQL Database."
  type        = string
  default     = null
}
variable "key_vault_connection_string" {
  description = "A 'key_vault_connection_string' block. Use this argument to store Azure SQL Database connection string in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either 'connection_string' or 'key_vault_connection_string' is required."
  type        = map(any)
  default     = null
}
#
# key_vault_connection_string block structure:
#   linked_service_name (string)               : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)                       : (REQUIRED) Specifies the secret name in Azure Key Vault that stores SQL Server connection string.


variable "key_vault_password" {
  description = "A 'key_vault_password' block. Use this argument to store SQL Server password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service."
  type        = map(any)
  default     = null
}
#
# key_vault_password block structure:
#   linked_service_name (string)      : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)              : (REQUIRED) Specifies the secret name in Azure Key Vault that stores SQL Server password.


