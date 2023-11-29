# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Management Lock. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "lock_level" {
  description = "(REQUIRED) Specifies the Level to be used for this Lock. Possible values are 'CanNotDelete' and 'ReadOnly'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "notes" {
  description = "Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
