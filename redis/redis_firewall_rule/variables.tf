# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "redis_cache_name" {
  description = "(REQUIRED) The name of the Redis Cache. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created."
  type        = string

}
variable "start_ip" {
  description = "(REQUIRED) The lowest IP address included in the range"
  type        = string

}
variable "end_ip" {
  description = "(REQUIRED) The highest IP address included in the range."
  type        = string

}
