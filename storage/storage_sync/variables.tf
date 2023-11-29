# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "incoming_traffic_policy" {
  description = "Incoming traffic policy. Possible values are 'AllowAllTraffic' and 'AllowVirtualNetworksOnly'. Defaults to 'AllowAllTraffic'."
  type        = string
  default     = "AllowAllTraffic"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Storage Sync."
  type        = map(any)
  default     = null
}
