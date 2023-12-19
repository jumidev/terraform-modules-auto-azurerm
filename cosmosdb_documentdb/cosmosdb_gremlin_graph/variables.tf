# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created."
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
variable "throughput" {
  description = "The throughput of the Gremlin graph (RU/s). Must be set in increments of '100'. The minimum value is '400'. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = string
  default     = null
}
variable "analytical_storage_ttl" {
  description = "The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between '-1' to '2147483647' not including '0'. If present and the value is set to '-1', it means never expire."
  type        = string
  default     = null
}
variable "default_ttl" {
  description = "The default time to live (TTL) of the Gremlin graph. If the value is missing or set to '-1', items don’t expire."
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
#   max_throughput (string)           : The maximum throughput of the Gremlin graph (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.


variable "index_policy" {
  description = "The configuration of the indexing policy. One or more 'index_policy' blocks."
  type        = map(map(any))
  default     = null
}
#
# index_policy block structure:
#   automatic (bool)            : Indicates if the indexing policy is automatic. Defaults to 'true'.
#   indexing_mode (string)      : (REQUIRED) Indicates the indexing mode. Possible values include: 'Consistent', 'Lazy', 'None'.
#   included_paths (string)     : List of paths to include in the indexing. Required if 'indexing_mode' is 'Consistent' or 'Lazy'.
#   excluded_paths (string)     : List of paths to exclude from indexing. Required if 'indexing_mode' is 'Consistent' or 'Lazy'.
#   composite_index (block)     : One or more 'composite_index' blocks.
#   spatial_index (block)       : One or more 'spatial_index' blocks.
#
# spatial_index block structure:
#   path (string)                : (REQUIRED) Path for which the indexing behaviour applies to. According to the service design, all spatial types including 'LineString', 'MultiPolygon', 'Point', and 'Polygon' will be applied to the path.
#
# composite_index block structure:
#   index (block)                  : (REQUIRED) One or more 'index' blocks.
#
# index block structure:
#   path (string)        : (REQUIRED) Path for which the indexing behaviour applies to.
#   order (string)       : (REQUIRED) Order of the index. Possible values are 'Ascending' or 'Descending'.


variable "conflict_resolution_policy" {
  description = "A 'conflict_resolution_policy' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# conflict_resolution_policy block structure:
#   mode (string)                             : (REQUIRED) Indicates the conflict resolution mode. Possible values include: 'LastWriterWins', 'Custom'.
#   conflict_resolution_path (string)         : The conflict resolution path in the case of LastWriterWins mode.
#   conflict_resolution_procedure (string)    : The procedure to resolve conflicts in the case of custom mode.


variable "unique_key" {
  description = "One or more 'unique_key' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# unique_key block structure:
#   paths (list)              : (REQUIRED) A list of paths to use for this unique key. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "spring_cloud_app_cosmosdb_association" {
  type    = map(any)
  default = null
}
