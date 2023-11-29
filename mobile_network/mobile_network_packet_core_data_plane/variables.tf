# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created."
  type        = string

}
variable "mobile_network_packet_core_control_plane_id" {
  description = "(REQUIRED) Specifies the ID of the Mobile Network Packet Core Data Plane. Changing this forces a new Mobile Network Packet Core Data Plane to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Packet Core Data Plane should exist. Changing this forces a new Mobile Network Packet Core Data Plane to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "user_plane_access_name" {
  description = "Specifies the logical name for thie user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_address" {
  description = "The IPv4 address for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_subnet" {
  description = "The IPv4 subnet for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_plane_access_ipv4_gateway" {
  description = "The default IPv4 gateway for the user plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Packet Core Data Plane."
  type        = map(any)
  default     = null
}
