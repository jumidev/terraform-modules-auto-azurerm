# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Azure Monitor Private Link Scoped Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "scope_name" {
  description = "(REQUIRED) The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created."
  type        = string

}
variable "linked_resource_id" {
  description = "(REQUIRED) The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created."
  type        = string

}
