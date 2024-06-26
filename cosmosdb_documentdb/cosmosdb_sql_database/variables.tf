# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "throughput" {
  description = "The throughput of SQL database (RU/s). Must be set in increments of '100'. The minimum value is '400'. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when 'azurerm_cosmosdb_account' is configured with 'EnableServerless' capability. ~> **Note:** Throughput has a maximum value of '1000000' unless a higher limit is requested via Azure Support"
  type        = string
  default     = null
}
variable "autoscale_settings" {
  description = "An 'autoscale_settings' block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. ~> **Note:** Switching between autoscale and manual throughput is not supported via Terraform and must be completed via the Azure Portal and refreshed."
  type        = map(any)
  default     = null
}
#
# autoscale_settings block structure:
#   max_throughput (string)           : The maximum throughput of the SQL database (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.



# OPTIONAL VARIABLES

variable "spring_cloud_app_cosmosdb_association" {
  type    = map(any)
  default = null
}
