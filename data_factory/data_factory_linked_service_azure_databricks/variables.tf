# REQUIRED VARIABLES

variable "adb_domain" {
  description = "(REQUIRED) The domain URL of the databricks instance."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_token" {
  description = "Authenticate to ADB via an access token."
  type        = string
  default     = null
}
variable "key_vault_password" {
  description = "Authenticate to ADB via Azure Key Vault Linked Service as defined in the 'key_vault_password' block below."
  type        = map(any)
  default     = null
}
#
# key_vault_password block structure:
#   linked_service_name (string)      : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)              : (REQUIRED) Specifies the secret name in Azure Key Vault that stores ADB access token.


variable "msi_work_space_resource_id" {
  description = "Authenticate to ADB via managed service identity."
  type        = string
  default     = null
}
variable "existing_cluster_id" {
  description = "The cluster_id of an existing cluster within the linked ADB instance."
  type        = string
  default     = null
}
variable "instance_pool" {
  description = "Leverages an instance pool within the linked ADB instance as one 'instance_pool' block defined below."
  type        = string
  default     = null
}
variable "new_cluster_config" {
  description = "Creates new clusters within the linked ADB instance as defined in the 'new_cluster_config' block below."
  type        = string
  default     = null
}
variable "additional_properties" {
  description = "A map of additional properties to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Linked Service."
  type        = string
  default     = null
}
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
variable "parameters" {
  description = "A map of parameters to associate with the Data Factory Linked Service."
  type        = string
  default     = null
}
