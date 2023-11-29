# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_name" {
  description = "(REQUIRED) Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_resource_id" {
  description = "(REQUIRED) The resource id of the cluster where the databases you would like to attach reside. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "default_principal_modification_kind" {
  description = "The default principals modification kind. Valid values are: 'None' (default), 'Replace' and 'Union'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "sharing" {
  description = "A 'sharing' block."
  type        = map(any)
  default     = null
}
#
# sharing block structure               :
#   external_tables_to_exclude (string)   : List of external tables exclude from the follower database.
#   external_tables_to_include (string)   : List of external tables to include in the follower database.
#   materialized_views_to_exclude (string): List of materialized views exclude from the follower database.
#   materialized_views_to_include (string): List of materialized views to include in the follower database.
#   tables_to_exclude (string)            : List of tables to exclude from the follower database.
#   tables_to_include (string)            : List of tables to include in the follower database.


