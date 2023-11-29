# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "node_count" {
  description = "(REQUIRED) The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between '0' and '20' except '1'."
  type        = int

}

# OPTIONAL VARIABLES

variable "citus_version" {
  description = "The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are '8.3', '9.0', '9.1', '9.2', '9.3', '9.4', '9.5', '10.0', '10.1', '10.2', '11.0', '11.1', '11.2', '11.3' and '12.1'."
  type        = string
  default     = null
}
variable "coordinator_public_ip_access_enabled" {
  description = "Is public access enabled on coordinator? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "coordinator_server_edition" {
  description = "The edition of the coordinator server. Possible values are 'BurstableGeneralPurpose', 'BurstableMemoryOptimized', 'GeneralPurpose' and 'MemoryOptimized'. Defaults to 'GeneralPurpose'."
  type        = string
  default     = "GeneralPurpose"
}
variable "coordinator_storage_quota_in_mb" {
  description = "The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are '32768', '65536', '131072', '262144', '524288', '1048576', '2097152', '4194304', '8388608', '16777216', and '33554432'."
  type        = string
  default     = null
}
variable "coordinator_vcore_count" {
  description = "The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are '1', '2', '4', '8', '16', '32', '64' and '96'."
  type        = string
  default     = null
}
variable "ha_enabled" {
  description = "Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "maintenance_window" {
  description = "A 'maintenance_window' block."
  type        = map(any)
  default     = null
}
#
# maintenance_window block structure:
#   day_of_week (string)              : The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = '0', Monday = '1'. Defaults to '0'.
#   start_hour (string)               : The start hour for maintenance window. Defaults to '0'.
#   start_minute (string)             : The start minute for maintenance window. Defaults to '0'.


variable "node_public_ip_access_enabled" {
  description = "Is public access enabled on worker nodes. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "node_server_edition" {
  description = "The edition of the node server. Possible values are 'BurstableGeneralPurpose', 'BurstableMemoryOptimized', 'GeneralPurpose' and 'MemoryOptimized'. Defaults to 'MemoryOptimized'."
  type        = string
  default     = "MemoryOptimized"
}
variable "node_storage_quota_in_mb" {
  description = "The storage quota in MB on each worker node. Possible values are '32768', '65536', '131072', '262144', '524288', '1048576', '2097152', '4194304', '8388608' and '16777216'."
  type        = string
  default     = null
}
variable "node_vcores" {
  description = "The vCores count on each worker node. Possible values are '1', '2', '4', '8', '16', '32', '64', '96' and '104'."
  type        = string
  default     = null
}
variable "point_in_time_in_utc" {
  description = "The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "preferred_primary_zone" {
  description = "The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster."
  type        = string
  default     = null
}
variable "shards_on_coordinator_enabled" {
  description = "Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster."
  type        = bool
  default     = null
}
variable "source_location" {
  description = "The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "source_resource_id" {
  description = "The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "sql_version" {
  description = "The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are '11', '12', '13', '14', '15' and '16'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster."
  type        = map(any)
  default     = null
}
