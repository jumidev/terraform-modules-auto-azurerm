# REQUIRED VARIABLES

variable "function_app_id" {
  description = "(REQUIRED) The ID of the Function App for this Hybrid Connection. Changing this forces a new resource to be created."
  type        = string

}
variable "relay_id" {
  description = "(REQUIRED) The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created."
  type        = string

}
variable "hostname" {
  description = "(REQUIRED) The hostname of the endpoint."
  type        = string

}
variable "port" {
  description = "(REQUIRED) The port to use for the endpoint"
  type        = string

}

# OPTIONAL VARIABLES

variable "send_key_name" {
  description = "The name of the Relay key with 'Send' permission to use. Defaults to 'RootManageSharedAccessKey'"
  type        = string
  default     = "RootManageSharedAccessKey"
}
