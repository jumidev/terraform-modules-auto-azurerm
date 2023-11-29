# REQUIRED VARIABLES

variable "linked_redis_cache_id" {
  description = "(REQUIRED) The ID of the linked Redis cache. Changing this forces a new Redis to be created."
  type        = string

}
variable "linked_redis_cache_location" {
  description = "(REQUIRED) The location of the linked Redis cache. Changing this forces a new Redis to be created."
  type        = string

}
variable "target_redis_cache_name" {
  description = "(REQUIRED) The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)"
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created."
  type        = string

}
variable "server_role" {
  description = "(REQUIRED) The role of the linked Redis cache (eg 'Secondary'). Changing this forces a new Redis to be created. Possible values are 'Primary' and 'Secondary'."
  type        = string

}
