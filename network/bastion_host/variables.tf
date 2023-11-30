# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Bastion Host. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations."
  type        = string

}
variable "ip_configuration" {
  description = "(REQUIRED) A 'ip_configuration' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# ip_configuration block structure:
#   subnet_id (string)              : (REQUIRED) Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
#   public_ip_address_id (string)   : (REQUIRED) Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "copy_paste_enabled" {
  description = "Is Copy/Paste feature enabled for the Bastion Host. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "file_copy_enabled" {
  description = "Is File Copy feature enabled for the Bastion Host. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "sku" {
  description = "The SKU of the Bastion Host. Accepted values are 'Basic' and 'Standard'. Defaults to 'Basic'."
  type        = string
  default     = "Basic"
}
variable "ip_connect_enabled" {
  description = "Is IP Connect feature enabled for the Bastion Host. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "scale_units" {
  description = "The number of scale units with which to provision the Bastion Host. Possible values are between '2' and '50'. Defaults to '2'."
  type        = string
  default     = "2"
}
variable "shareable_link_enabled" {
  description = "Is Shareable Link feature enabled for the Bastion Host. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tunneling_enabled" {
  description = "Is Tunneling feature enabled for the Bastion Host. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
