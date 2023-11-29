# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created."
  type        = string

}
variable "content_uri" {
  description = "(REQUIRED) The URL of the python package. Changing this forces a new Automation Python3 Package to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "content_version" {
  description = "Specify the version of the python3 package. The value should meet the system.version class format like '1.1.1'. Changing this forces a new Automation Python3 Package to be created."
  type        = string
  default     = null
}
variable "hash_algorithm" {
  description = "Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created."
  type        = string
  default     = null
}
variable "hash_value" {
  description = "Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Automation Python3 Package."
  type        = map(any)
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
