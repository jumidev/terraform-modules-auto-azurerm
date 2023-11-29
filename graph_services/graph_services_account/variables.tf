# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Account. Changing this forces a new Account to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created."
  type        = string

}
variable "application_id" {
  description = "(REQUIRED) Customer owned application ID. Changing this forces a new Account to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Account."
  type        = map(any)
  default     = null
}
