# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the kusto principal assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_name" {
  description = "(REQUIRED) The name of the cluster in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the database in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_id" {
  description = "(REQUIRED) The object id of the principal. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_type" {
  description = "(REQUIRED) The type of the principal. Valid values include 'App', 'Group', 'User'. Changing this forces a new resource to be created."
  type        = string

}
variable "role" {
  description = "(REQUIRED) The database role assigned to the principal. Valid values include 'Admin', 'Ingestor', 'Monitor', 'UnrestrictedViewer', 'User' and 'Viewer'. Changing this forces a new resource to be created."
  type        = string

}
variable "tenant_id" {
  description = "(REQUIRED) The tenant id in which the principal resides. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "kusto_cluster_resource_group_name" {
  description = "The name of the Resource Group where the Kusto Cluster exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_resource_group_name" {
  description = "The Resource Group where the Kusto Database exists..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
variable "kusto_database_cluster_name" {
  description = "The name of the Kusto Cluster this database is added to..  If not specified, value of var.cluster_name will be used."
  type        = string
  default     = null
}
