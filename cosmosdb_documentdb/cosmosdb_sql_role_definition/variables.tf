# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account. Changing this forces a new resource to be created."
  type        = string

}
variable "assignable_scopes" {
  description = "(REQUIRED) A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes. ~> **NOTE:** The resources referenced in assignable scopes need not exist."
  type        = list(any)

}
variable "name" {
  description = "(REQUIRED) An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account."
  type        = string

}
variable "permissions" {
  description = "(REQUIRED) A 'permissions' block."
  type        = map(any)
}
#
# permissions block structure:
#   data_actions (list)        : (REQUIRED) A list of data actions that are allowed for the Cosmos DB SQL Role Definition.



# OPTIONAL VARIABLES

variable "role_definition_id" {
  description = "The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "type" {
  description = "The type of the Cosmos DB SQL Role Definition. Possible values are 'BuiltInRole' and 'CustomRole'. Defaults to 'CustomRole'. Changing this forces a new resource to be created."
  type        = string
  default     = "CustomRole"
}
variable "cosmosdb_account_resource_group_name" {
  description = "Specifies the name of the resource group in which the CosmosDB Account resides..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
