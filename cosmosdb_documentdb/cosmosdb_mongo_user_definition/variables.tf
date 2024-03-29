# REQUIRED VARIABLES

variable "cosmos_mongo_database_id" {
  description = "(REQUIRED) The resource ID of the Mongo DB. Changing this forces a new resource to be created."
  type        = string

}
variable "username" {
  description = "(REQUIRED) The username for the Mongo User Definition. Changing this forces a new resource to be created."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password for the Mongo User Definition."
  type        = string

}

# OPTIONAL VARIABLES

variable "inherited_role_names" {
  description = "A list of Mongo Roles that are inherited to the Mongo User Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of 'cosmos_mongo_database_id'."
  type        = list(any)
  default     = []
}
