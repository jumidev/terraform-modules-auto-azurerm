# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name to use for this Network Packet Capture. Changing this forces a new resource to be created."
  type        = string

}
variable "network_watcher_name" {
  description = "(REQUIRED) The name of the Network Watcher. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Network Watcher exists. Changing this forces a new resource to be created."
  type        = string

}
variable "target_resource_id" {
  description = "(REQUIRED) The ID of the Resource to capture packets from. Changing this forces a new resource to be created. ~> **NOTE:** Currently only Virtual Machines IDs are supported."
  type        = string

}
variable "storage_location" {
  description = "(REQUIRED) A 'storage_location' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# storage_location block structure:
#   file_path (string)              : A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For Linux virtual machine it must start with '/var/captures'.
#   storage_account_id (string)     : The ID of the storage account to save the packet capture session ~> **NOTE:** At least one of 'file_path' or 'storage_account_id' must be specified.



# OPTIONAL VARIABLES

variable "maximum_bytes_per_packet" {
  description = "The number of bytes captured per packet. The remaining bytes are truncated. Defaults to '0' (Entire Packet Captured). Changing this forces a new resource to be created."
  type        = number
  default     = 0
}
variable "maximum_bytes_per_session" {
  description = "Maximum size of the capture in Bytes. Defaults to '1073741824' (1GB). Changing this forces a new resource to be created."
  type        = number
  default     = 1073741824
}
variable "maximum_capture_duration" {
  description = "The maximum duration of the capture session in seconds. Defaults to '18000' (5 hours). Changing this forces a new resource to be created."
  type        = number
  default     = 18000
}
variable "filter" {
  description = "One or more 'filter' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# filter block structure    :
#   local_ip_address (string) : The local IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created.
#   local_port (string)       : The local port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created.
#   protocol (string)         : (REQUIRED) The Protocol to be filtered on. Possible values include 'Any', 'TCP' and 'UDP'. Changing this forces a new resource to be created.
#   remote_ip_address (string): The remote IP Address to be filtered on. Notation: '127.0.0.1' for single address entry. '127.0.0.1-127.0.0.255' for range. '127.0.0.1;127.0.0.5;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported.. Changing this forces a new resource to be created.
#   remote_port (string)      : The remote port to be filtered on. Notation: '80' for single port entry.'80-85' for range. '80;443;' for multiple entries. Multiple ranges not currently supported. Mixing ranges with multiple entries not currently supported. Changing this forces a new resource to be created.


