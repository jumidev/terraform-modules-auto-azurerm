# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created."
  type        = string

}
variable "worker_group_name" {
  description = "(REQUIRED) The name of the HybridWorker Group. Changing this forces a new Automation to be created."
  type        = string

}
variable "worker_id" {
  description = "(REQUIRED) Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created."
  type        = string

}
variable "vm_resource_id" {
  description = "(REQUIRED) The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
