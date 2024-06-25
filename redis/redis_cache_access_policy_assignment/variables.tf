# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Redis Cache Access Policy Assignment. Changing this forces a new Redis Cache Access Policy Assignment to be created."
  type        = string

}
variable "redis_cache_id" {
  description = "(REQUIRED) The ID of the Redis Cache. Changing this forces a new Redis Cache Access Policy Assignment to be created."
  type        = string

}
variable "access_policy_name" {
  description = "(REQUIRED) The name of the Access Policy to be assigned. Changing this forces a new Redis Cache Access Policy Assignment to be created."
  type        = string

}
variable "object_id" {
  description = "(REQUIRED) The principal ID to be assigned the Access Policy. Changing this forces a new Redis Cache Access Policy Assignment to be created."
  type        = string

}
variable "object_id_alias" {
  description = "(REQUIRED) The alias of the principal ID. User-friendly name for object ID. Also represents username for token based authentication. Changing this forces a new Redis Cache Access Policy Assignment to be created."
  type        = string

}
