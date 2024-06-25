# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created."
  type        = string

}
variable "cassandra_keyspace_id" {
  description = "(REQUIRED) The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created."
  type        = string

}
variable "schema" {
  description = "(REQUIRED) A 'schema' block."
  type        = map(any)
}
#
# schema block structure:
#   column (block)        : (REQUIRED) One or more 'column' blocks.
#   partition_key (block) : (REQUIRED) One or more 'partition_key' blocks.
#   cluster_key (block)   : One or more 'cluster_key' blocks.
#
# partition_key block structure:
#   name (string)                : (REQUIRED) Name of the column to partition by.
#
# column block structure:
#   name (string)         : (REQUIRED) Name of the column to be created.
#   type (string)         : (REQUIRED) Type of the column to be created.
#
# cluster_key block structure:
#   name (string)              : (REQUIRED) Name of the cluster key to be created.
#   order_by (string)          : (REQUIRED) Order of the key. Currently supported values are 'Asc' and 'Desc'.



# OPTIONAL VARIABLES

variable "throughput" {
  description = "The throughput of Cassandra KeySpace (RU/s). Must be set in increments of '100'. The minimum value is '400'. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = string
  default     = null
}
variable "default_ttl" {
  description = "Time to live of the Cosmos DB Cassandra table. Possible values are at least '-1'. '-1' means the Cassandra table never expires."
  type        = string
  default     = null
}
variable "analytical_storage_ttl" {
  description = "Time to live of the Analytical Storage. Possible values are between '-1' and '2147483647' except '0'. '-1' means the Analytical Storage never expires. Changing this forces a new resource to be created. ~> **Note:** throughput has a maximum value of '1000000' unless a higher limit is requested via Azure Support"
  type        = number
  default     = null
}
variable "autoscale_settings" {
  description = "An 'autoscale_settings' block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. ~> **Note:** Switching between autoscale and manual throughput is not supported via Terraform and must be completed via the Azure Portal and refreshed."
  type        = map(any)
  default     = null
}
#
# autoscale_settings block structure:
#   max_throughput (string)           : The maximum throughput of the Cassandra Table (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.


