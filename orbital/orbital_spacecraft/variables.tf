# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Spacecraft. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Spacecraft exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location where the Spacecraft exists. Changing this forces a new resource to be created."
  type        = string

}
variable "norad_id" {
  description = "(REQUIRED) NORAD ID of the Spacecraft."
  type        = string

}
variable "links" {
  description = "(REQUIRED) A 'links' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# links block structure        :
#   bandwidth_mhz (string)       : (REQUIRED) Bandwidth in Mhz.
#   center_frequency_mhz (string): (REQUIRED) Center frequency in Mhz.
#   direction (string)           : (REQUIRED) Direction if the communication. Possible values are 'Uplink' and 'Downlink'.
#   polarization (string)        : (REQUIRED) Polarization. Possible values are 'RHCP', 'LHCP', 'linearVertical' and 'linearHorizontal'.


variable "two_line_elements" {
  description = "(REQUIRED) A list of the two line elements (TLE), the first string being the first of the TLE, the second string being the second line of the TLE. Changing this forces a new resource to be created."
  type        = list(any)

}
variable "title_line" {
  description = "(REQUIRED) Title of the two line elements (TLE)."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
