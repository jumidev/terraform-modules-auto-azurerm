# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this API Management Redis Cache. Changing this forces a new API Management Redis Cache to be created."
  type        = string

}
variable "api_management_id" {
  description = "(REQUIRED) The resource ID of the API Management Service from which to create this external cache. Changing this forces a new API Management Redis Cache to be created."
  type        = string

}
variable "connection_string" {
  description = "(REQUIRED) The connection string to the Cache for Redis."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the API Management Redis Cache."
  type        = string
  default     = null
}
variable "redis_cache_id" {
  description = "The resource ID of the Cache for Redis."
  type        = string
  default     = null
}
variable "cache_location" {
  description = "The location where to use cache from. Possible values are 'default' and valid Azure regions. Defaults to 'default'."
  type        = string
  default     = "default"
}
