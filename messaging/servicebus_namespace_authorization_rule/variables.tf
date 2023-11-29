# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_id" {
  description = "(REQUIRED) Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "listen" {
  description = "Grants listen access to this this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Grants send access to this this Authorization Rule. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "manage" {
  description = "Grants manage access to this this Authorization Rule. When this property is 'true' - both 'listen' and 'send' must be too. Defaults to 'false'."
  type        = bool
  default     = false
}
