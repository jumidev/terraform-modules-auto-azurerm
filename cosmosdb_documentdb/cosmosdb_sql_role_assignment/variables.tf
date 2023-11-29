# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB Account. Changing this forces a new resource to be created."
  type        = string

}
variable "principal_id" {
  description = "(REQUIRED) The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created."
  type        = string

}
variable "role_definition_id" {
  description = "(REQUIRED) The resource ID of the Cosmos DB SQL Role Definition."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
