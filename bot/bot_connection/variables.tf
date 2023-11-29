# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "bot_name" {
  description = "(REQUIRED) The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "service_provider_name" {
  description = "(REQUIRED) The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) The Client ID that will be used to authenticate with the service provider."
  type        = string

}
variable "client_secret" {
  description = "(REQUIRED) The Client Secret that will be used to authenticate with the service provider."
  type        = string

}

# OPTIONAL VARIABLES

variable "scopes" {
  description = "The Scopes at which the connection should be applied."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A map of additional parameters to apply to the connection."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
