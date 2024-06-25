# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created."
  type        = string

}
variable "redis_cache_id" {
  description = "(REQUIRED) The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy to be created."
  type        = string

}
variable "permissions" {
  description = "(REQUIRED) Permissions that are going to be assigned to this Redis Cache Access Policy. Changing this forces a new Redis Cache Access Policy to be created."
  type        = string

}
