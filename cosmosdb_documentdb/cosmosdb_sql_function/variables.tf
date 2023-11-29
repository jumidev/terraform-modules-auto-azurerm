# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created."
  type        = string

}
variable "container_id" {
  description = "(REQUIRED) The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created."
  type        = string

}
variable "body" {
  description = "(REQUIRED) Body of the User Defined Function."
  type        = string

}
