# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "kusto_endpoint" {
  description = "(REQUIRED) The URI of the Kusto Cluster endpoint."
  type        = string

}
variable "kusto_database_name" {
  description = "(REQUIRED) The Kusto Database Name."
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
variable "use_managed_identity" {
  description = "Whether to use the Data Factory's managed identity to authenticate against the Kusto Database."
  type        = bool
  default     = null
}
variable "service_principal_id" {
  description = "The service principal id in which to authenticate against the Kusto Database."
  type        = string
  default     = null
}
variable "service_principal_key" {
  description = "The service principal key in which to authenticate against the Kusto Database."
  type        = string
  default     = null
}
variable "tenant" {
  description = "The service principal tenant id or name in which to authenticate against the Kusto Database."
  type        = string
  default     = null
}
variable "kusto_database_resource_group_name" {
  description = "The Resource Group where the Kusto Database exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_cluster_name" {
  description = "The name of the Kusto Cluster this database is added to..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used..  If not specified, value of var.cluster_name will be used."
  type        = string
  default     = null
}
