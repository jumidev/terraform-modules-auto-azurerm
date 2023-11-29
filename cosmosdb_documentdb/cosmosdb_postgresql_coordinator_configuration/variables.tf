# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_id" {
  description = "(REQUIRED) The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "value" {
  description = "(REQUIRED) The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster."
  type        = string

}
