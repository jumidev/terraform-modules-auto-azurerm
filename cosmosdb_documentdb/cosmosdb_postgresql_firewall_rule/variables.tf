# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "cluster_id" {
  description = "(REQUIRED) The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule."
  type        = string

}
