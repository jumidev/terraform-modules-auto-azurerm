# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) The Client ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tenant_id" {
  description = "The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created. ~> **NOTE** If unspecified the Tenant ID of the Provider will be used."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Stack HCI Cluster."
  type        = map(any)
  default     = null
}
variable "automanage_configuration_id" {
  description = "The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster."
  type        = string
  default     = null
}
