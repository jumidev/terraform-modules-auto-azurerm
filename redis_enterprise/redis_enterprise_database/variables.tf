# REQUIRED VARIABLES

variable "cluster_id" {
  description = "(REQUIRED) The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is 'default'. Defaults to 'default'. Changing this forces a new Redis Enterprise Database to be created."
  type        = string
  default     = "default"
}
variable "resource_group_name" {
  description = "The name of the Resource Group where the Redis Enterprise Database should exist. Changing this forces a new Redis Enterprise Database to be created."
  type        = string
  default     = null
}
variable "client_protocol" {
  description = "Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are 'Encrypted' and 'Plaintext'. Defaults to 'Encrypted'. Changing this forces a new Redis Enterprise Database to be created."
  type        = string
  default     = "Encrypted"
}
variable "clustering_policy" {
  description = "Clustering policy Specified at create time. Possible values are 'EnterpriseCluster' and 'OSSCluster'. Defaults to 'OSSCluster'. Changing this forces a new Redis Enterprise Database to be created."
  type        = string
  default     = "OSSCluster"
}
variable "eviction_policy" {
  description = "Redis eviction policy possible values are 'AllKeysLFU', 'AllKeysLRU', 'AllKeysRandom', 'VolatileLRU', 'VolatileLFU', 'VolatileTTL', 'VolatileRandom' and 'NoEviction'. Changing this forces a new Redis Enterprise Database to be created. Defaults to 'VolatileLRU'."
  type        = string
  default     = "VolatileLRU"
}
variable "module" {
  description = "A 'module' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# module block structure:
#   args (string)         : Configuration options for the module (e.g. 'ERROR_RATE 0.00 INITIAL_SIZE 400'). Changing this forces a new resource to be created. Defaults to ''''.


variable "linked_database_id" {
  description = "A list of database resources to link with this database with a maximum of 5."
  type        = list(any)
  default     = []
}
variable "linked_database_group_nickname" {
  description = "Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created."
  type        = string
  default     = null
}
variable "port" {
  description = "TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to '10000'."
  type        = string
  default     = null
}
