# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created."
  type        = string

}
variable "database_id" {
  description = "(REQUIRED) The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Database."
  type        = map(any)
  default     = null
}
