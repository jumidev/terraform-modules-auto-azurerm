# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "voice_services_communications_gateway_id" {
  description = "(REQUIRED) Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "phone_number" {
  description = "(REQUIRED) Specifies the phone number."
  type        = string

}
variable "purpose" {
  description = "(REQUIRED) The purpose of the Voice Services Communications Gateway Test Line. Possible values are 'Automated' or 'Manual'."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line."
  type        = map(any)
  default     = null
}
