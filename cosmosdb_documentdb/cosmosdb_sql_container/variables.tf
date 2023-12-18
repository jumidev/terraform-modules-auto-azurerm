# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created."
  type        = string

}
variable "partition_key_path" {
  description = "(REQUIRED) Define a partition key. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "partition_key_version" {
  description = "Define a partition key version. Changing this forces a new resource to be created. Possible values are '1'and '2'. This should be set to '2' in order to use large partition keys."
  type        = string
  default     = null
}
variable "unique_key" {
  description = "One or more 'unique_key' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# unique_key block structure:
#   paths (list)              : (REQUIRED) A list of paths to use for this unique key. Changing this forces a new resource to be created.


variable "throughput" {
  description = "The throughput of SQL container (RU/s). Must be set in increments of '100'. The minimum value is '400'. This must be set upon container creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = string
  default     = null
}
variable "autoscale_settings" {
  description = "An 'autoscale_settings' block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires 'partition_key_path' to be set."
  type        = map(any)
  default     = null
}
#
# autoscale_settings block structure:
#   max_throughput (string)           : The maximum throughput of the SQL container (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.


variable "indexing_policy" {
  description = "An 'indexing_policy' block."
  type        = map(any)
  default     = null
}
#
# indexing_policy block structure:
#   indexing_mode (string)         : Indicates the indexing mode. Possible values include: 'consistent' and 'none'. Defaults to 'consistent'.
#   included_path (block)          : One or more 'included_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*'
#   excluded_path (block)          : One or more 'excluded_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*'
#   composite_index (block)        : One or more 'composite_index' blocks.
#   spatial_index (block)          : One or more 'spatial_index' blocks.
#
# spatial_index block structure:
#   path (string)                : (REQUIRED) Path for which the indexing behaviour applies to. According to the service design, all spatial types including 'LineString', 'MultiPolygon', 'Point', and 'Polygon' will be applied to the path.
#
# index block structure:
#   path (string)        : (REQUIRED) Path for which the indexing behaviour applies to.
#   order (string)       : (REQUIRED) Order of the index. Possible values are 'Ascending' or 'Descending'.
#
# composite_index block structure:
#   index (block)                  : (REQUIRED) One or more 'index' blocks.
#
# included_path block structure:
#   path (string)                : (REQUIRED) Path for which the indexing behaviour applies to.
#
# excluded_path block structure:
#   path (string)                : (REQUIRED) Path that is excluded from indexing.


variable "default_ttl" {
  description = "The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to '-1', it is equal to infinity, and items don’t expire by default. If present and the value is set to some number 'n' – items will expire 'n' seconds after their last modified time."
  type        = string
  default     = null
}
variable "analytical_storage_ttl" {
  description = "The default time to live of Analytical Storage for this SQL container. If present and the value is set to '-1', it is equal to infinity, and items don’t expire by default. If present and the value is set to some number 'n' – items will expire 'n' seconds after their last modified time."
  type        = string
  default     = null
}
variable "conflict_resolution_policy" {
  description = "A 'conflict_resolution_policy' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# conflict_resolution_policy block structure:
#   mode (string)                             : (REQUIRED) Indicates the conflict resolution mode. Possible values include: 'LastWriterWins', 'Custom'.
#   conflict_resolution_path (string)         : The conflict resolution path in the case of 'LastWriterWins' mode.
#   conflict_resolution_procedure (string)    : The procedure to resolve conflicts in the case of 'Custom' mode.


