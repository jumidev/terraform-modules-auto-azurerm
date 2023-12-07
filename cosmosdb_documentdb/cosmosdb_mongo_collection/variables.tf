# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
  type        = string

}
variable "database_name" {
  description = "(REQUIRED) The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "shard_key" {
  description = "The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "analytical_storage_ttl" {
  description = "The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to '-1', it is equal to infinity, and items don’t expire by default. If present and the value is set to some number 'n' – items will expire 'n' seconds after their last modified time."
  type        = string
  default     = null
}
variable "default_ttl_seconds" {
  description = "The default Time To Live in seconds. If the value is '-1', items are not automatically expired."
  type        = number
  default     = null
}
variable "index" {
  description = "One or more 'index' blocks."
  type        = map(map(any))
  default     = null
}
#
# index block structure:
#   keys (string)        : (REQUIRED) Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
#   unique (bool)        : Is the index unique or not? Defaults to 'false'.


variable "throughput" {
  description = "The throughput of the MongoDB collection (RU/s). Must be set in increments of '100'. The minimum value is '400'. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = string
  default     = null
}
variable "autoscale_settings" {
  description = "An 'autoscale_settings' block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = map(any)
  default     = null
}
#
# autoscale_settings block structure:
#   max_throughput (string)           : The maximum throughput of the MongoDB collection (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.


