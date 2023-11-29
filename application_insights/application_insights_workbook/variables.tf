# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) Specifies the user-defined name (display name) of the workbook."
  type        = string

}
variable "data_json" {
  description = "(REQUIRED) Configuration of this particular workbook. Configuration data is a string containing valid JSON."
  type        = string

}

# OPTIONAL VARIABLES

variable "source_id" {
  description = "Resource ID for a source resource. It should not contain any uppercase letters. Defaults to 'azure monitor'."
  type        = string
  default     = "azure monitor"
}
variable "category" {
  description = "Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: 'workbook', 'sentinel'. Defaults to 'workbook'."
  type        = string
  default     = "workbook"
}
variable "description" {
  description = "Specifies the description of the workbook."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Changing this forces a new Workbook to be created."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Service Identity that is configured on this Workbook. Possible values are 'UserAssigned', 'SystemAssigned' and 'SystemAssigned, UserAssigned'. Changing this forces a new resource to be created.
#   principal_id (string)   : The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook.
#   tenant_id (string)      : The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook.
#   identity_ids (string)   : The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created.


variable "storage_container_id" {
  description = "Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Workbook."
  type        = map(any)
  default     = null
}
