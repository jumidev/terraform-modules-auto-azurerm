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
  description = "(REQUIRED) The endpoint for the Azure Data Lake Storage Gen2 service."
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
variable "storage_account_key" {
  description = "The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with 'service_principal_id', 'service_principal_key', 'tenant' and 'use_managed_identity'."
  type        = string
  default     = null
}
variable "use_managed_identity" {
  description = "Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with 'service_principal_id', 'service_principal_key', 'tenant' and 'storage_account_key'."
  type        = bool
  default     = null
}
variable "service_principal_id" {
  description = "The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with 'storage_account_key' and 'use_managed_identity'."
  type        = string
  default     = null
}
variable "service_principal_key" {
  description = "The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account."
  type        = string
  default     = null
}
variable "tenant" {
  description = "The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account."
  type        = string
  default     = null
}
