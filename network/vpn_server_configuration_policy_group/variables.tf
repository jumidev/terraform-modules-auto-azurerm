# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created."
  type        = string

}
variable "vpn_server_configuration_id" {
  description = "(REQUIRED) The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created."
  type        = string

}
variable "policy" {
  description = "(REQUIRED) One or more 'policy' blocks."
  type        = string

}

# OPTIONAL VARIABLES

variable "is_default" {
  description = "Is this a default VPN Server Configuration Policy Group? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "priority" {
  description = "The priority of this VPN Server Configuration Policy Group. Defaults to '0'."
  type        = string
  default     = "0"
}
