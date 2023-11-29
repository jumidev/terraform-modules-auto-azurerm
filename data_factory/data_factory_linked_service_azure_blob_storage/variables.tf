# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description for the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "integration_runtime_name" {
  description = "The integration runtime reference to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "connection_string" {
  description = "The connection string. Conflicts with 'connection_string_insecure', 'sas_uri' and 'service_endpoint'."
  type        = string
  default     = null
}
variable "connection_string_insecure" {
  description = "The connection string sent insecurely. Conflicts with 'connection_string', 'sas_uri' and 'service_endpoint'."
  type        = string
  default     = null
}
variable "sas_uri" {
  description = "The SAS URI. Conflicts with 'connection_string_insecure', 'connection_string' and 'service_endpoint'."
  type        = string
  default     = null
}
variable "key_vault_sas_token" {
  description = "A 'key_vault_sas_token' block. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A 'sas_uri' is required."
  type        = map(any)
  default     = null
}
#
# key_vault_sas_token block structure           :
#   linked_service_name (string)                  : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)                          : (REQUIRED) Specifies the secret name in Azure Key Vault that stores the SAS token.
#   service_principal_linked_key_vault_key (block): A 'service_principal_linked_key_vault_key' block. Use this argument to store Service Principal key in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
#
# service_principal_linked_key_vault_key block structure:
#   linked_service_name (string)                          : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)                                  : (REQUIRED) Specifies the secret name in Azure Key Vault that stores the Service Principal key.
#   service_endpoint (string)                             : The Service Endpoint. Conflicts with 'connection_string', 'connection_string_insecure' and 'sas_uri'.
#   use_managed_identity (bool)                           : Whether to use the Data Factory's managed identity to authenticate against the Azure Blob Storage account. Incompatible with 'service_principal_id' and 'service_principal_key'.
#   service_principal_id (string)                         : The service principal id in which to authenticate against the Azure Blob Storage account.
#   service_principal_key (string)                        : The service principal key in which to authenticate against the AAzure Blob Storage account.
#   storage_kind (string)                                 : Specify the kind of the storage account. Allowed values are 'Storage', 'StorageV2', 'BlobStorage' and 'BlockBlobStorage'.
#   tenant_id (string)                                    : The tenant id or name in which to authenticate against the Azure Blob Storage account.


