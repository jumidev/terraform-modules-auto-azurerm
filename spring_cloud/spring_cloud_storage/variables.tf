# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created."
  type        = string

}
variable "storage_account_key" {
  description = "(REQUIRED) The access key of the Azure Storage Account."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The account name of the Azure Storage Account."
  type        = string

}

# OPTIONAL VARIABLES

variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
