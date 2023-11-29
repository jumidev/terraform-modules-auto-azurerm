# REQUIRED VARIABLES

variable "cosmosdb_account_id" {
  description = "(REQUIRED) The resource ID of the CosmosDB Account. Changing this forces a new resource to be created."
  type        = string

}
variable "instance_size" {
  description = "(REQUIRED) The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are 'Cosmos.D4s', 'Cosmos.D8s' and 'Cosmos.D16s'."
  type        = string

}
variable "instance_count" {
  description = "(REQUIRED) The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between '1' and '5'."
  type        = int

}
