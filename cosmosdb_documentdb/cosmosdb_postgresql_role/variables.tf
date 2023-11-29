# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_id" {
  description = "(REQUIRED) The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "password" {
  description = "(REQUIRED) The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created."
  type        = string

}
