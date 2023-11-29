# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Authorization Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "queue_id" {
  description = "(REQUIRED) Specifies the ID of the ServiceBus Queue. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "listen" {
  description = "Does this Authorization Rule have Listen permissions to the ServiceBus Queue? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "send" {
  description = "Does this Authorization Rule have Send permissions to the ServiceBus Queue? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "manage" {
  description = "Does this Authorization Rule have Manage permissions to the ServiceBus Queue? When this property is 'true' - both 'listen' and 'send' must be too. Defaults to 'false'."
  type        = bool
  default     = false
}
