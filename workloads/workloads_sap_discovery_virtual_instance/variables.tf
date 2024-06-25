# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the SAP Discovery Virtual Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the SAP Discovery Virtual Instance should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "central_server_virtual_machine_id" {
  description = "(REQUIRED) The ID of the Virtual Machine of the Central Server. Changing this forces a new resource to be created."
  type        = string

}
variable "environment" {
  description = "(REQUIRED) The environment type for the SAP Discovery Virtual Instance. Possible values are 'NonProd' and 'Prod'. Changing this forces a new resource to be created."
  type        = string

}
variable "sap_product" {
  description = "(REQUIRED) The SAP Product type for the SAP Discovery Virtual Instance. Possible values are 'ECC', 'Other' and 'S4HANA'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Service Identity that should be configured on this SAP Discovery Virtual Instance. The only possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance.


variable "managed_resource_group_name" {
  description = "The name of the managed Resource Group for the SAP Discovery Virtual Instance. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "managed_storage_account_name" {
  description = "The name of the custom Storage Account created by the service in the managed Resource Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the SAP Discovery Virtual Instance."
  type        = map(any)
  default     = null
}
