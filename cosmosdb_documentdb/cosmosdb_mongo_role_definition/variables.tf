# REQUIRED VARIABLES

variable "cosmos_mongo_database_id" {
  description = "(REQUIRED) The resource ID of the Mongo DB. Changing this forces a new resource to be created."
  type        = string

}
variable "role_name" {
  description = "(REQUIRED) The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "inherited_role_names" {
  description = "A list of Mongo Roles which are inherited to the Mongo Role Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of 'cosmos_mongo_database_id'."
  type        = list(any)
  default     = []
}
variable "privilege" {
  description = "A 'privilege' block."
  type        = map(any)
  default     = null
}
#
# privilege block structure:
#   actions (list)           : (REQUIRED) A list of actions that are allowed.
#   resource (block)         : (REQUIRED) A 'resource' block.
#
# resource block structure:
#   collection_name (string): The name of the Mongo DB Collection that the Role Definition is applied.
#   db_name (string)        : The name of the Mongo DB that the Role Definition is applied.


