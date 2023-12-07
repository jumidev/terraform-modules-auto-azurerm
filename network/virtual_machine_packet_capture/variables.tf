# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name to use for this Network Packet Capture. Changing this forces a new resource to be created."
  type        = string

}
variable "network_watcher_id" {
  description = "(REQUIRED) The resource ID of the Network Watcher. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_id" {
  description = "(REQUIRED) The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_location" {
  description = "(REQUIRED) A 'storage_location' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# storage_location block structure:
#   file_path (string)              : A valid local path on the target Virtual Machine. Must include the name of the capture file (*.cap). For Linux Virtual Machines it must start with '/var/captures'.
#   storage_account_id (string)     : The ID of the storage account where the packet capture sessions should be saved to.



# OPTIONAL VARIABLES

variable "maximum_bytes_per_packet" {
  description = "The number of bytes captured per packet. The remaining bytes are truncated. Defaults to '0' (Entire Packet Captured). Changing this forces a new resource to be created."
  type        = number
  default     = "0"
}
variable "maximum_bytes_per_session" {
  description = "Maximum size of the capture in Bytes. Defaults to '1073741824' (1GB). Changing this forces a new resource to be created."
  type        = number
  default     = "1073741824"
}
variable "maximum_capture_duration_in_seconds" {
  description = "The maximum duration of the capture session in seconds. Defaults to '18000' (5 hours). Changing this forces a new resource to be created."
  type        = number
  default     = "18000"
}
variable "filter" {
  description = "One or more 'filter' blocks. Changing this forces a new resource to be created."
  type        = map(map(any))
  default     = null
}
#
# filter block structure    :
#   local_ip_address (string) : The local IP Address to be filtered on. Specify '127.0.0.1' for a single address entry, '127.0.0.1-127.0.0.255' for a range and '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
#   local_port (string)       : The local port to be filtered on. Specify '80' for single port entry, '80-85' for a range and '80;443;' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
#   protocol (string)         : (REQUIRED) The Protocol to be filtered on. Possible values include 'Any', 'TCP' and 'UDP'. Changing this forces a new resource to be created.
#   remote_ip_address (string): The remote IP Address to be filtered on. Specify '127.0.0.1' for a single address entry, '127.0.0.1-127.0.0.255' for a range and '127.0.0.1;127.0.0.5' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.
#   remote_port (string)      : The remote port to be filtered on. Specify '80' for single port entry, '80-85' for a range and '80;443;' for multiple entries. Multiple ranges and mixing ranges with multiple entries are currently not supported. Changing this forces a new resource to be created.


