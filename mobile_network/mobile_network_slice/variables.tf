# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network Slice. Changing this forces a new Mobile Network Slice to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) The ID of Mobile Network which the Mobile Network Slice belongs to. Changing this forces a new Mobile Network Slice to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Slice should exist. Changing this forces a new Mobile Network Slice to be created."
  type        = string

}
variable "single_network_slice_selection_assistance_information" {
  description = "(REQUIRED) A 'single_network_slice_selection_assistance_information' block. Single-network slice selection assistance information (S-NSSAI). Unique at the scope of a mobile network."
  type        = map(any)
}
#
# single_network_slice_selection_assistance_information block structure:
#   slice_differentiator (string)                                        : Slice differentiator (SD). Must be a 6 digit hex string.
#   slice_service_type (string)                                          : (REQUIRED) Slice/service type (SST). Must be between '0' and '255'.



# OPTIONAL VARIABLES

variable "description" {
  description = "A description for this Mobile Network Slice."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Slice."
  type        = map(any)
  default     = null
}
