# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "url" {
  description = "(REQUIRED) The url of the Azure Function."
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
variable "key" {
  description = "The system key of the Azure Function. Exactly one of either 'key' or 'key_vault_key' is required"
  type        = string
  default     = null
}
variable "key_vault_key" {
  description = "A 'key_vault_key' block. Use this Argument to store the system key of the Azure Function in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. Exactly one of either 'key' or 'key_vault_key' is required."
  type        = map(any)
  default     = null
}
#
# key_vault_key block structure:
#   linked_service_name (string) : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)         : (REQUIRED) Specifies the secret name in Azure Key Vault that stores the system key of the Azure Function.


