# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created."
  type        = string

}
variable "container_id" {
  description = "(REQUIRED) The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created."
  type        = string

}
variable "body" {
  description = "(REQUIRED) Body of the Trigger."
  type        = string

}
variable "operation" {
  description = "(REQUIRED) The operation the trigger is associated with. Possible values are 'All', 'Create', 'Update', 'Delete' and 'Replace'."
  type        = string

}
variable "type" {
  description = "(REQUIRED) Type of the Trigger. Possible values are 'Pre' and 'Post'."
  type        = string

}
