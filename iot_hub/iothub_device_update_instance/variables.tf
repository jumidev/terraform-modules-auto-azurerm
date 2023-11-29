# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "device_update_account_id" {
  description = "(REQUIRED) Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_id" {
  description = "(REQUIRED) Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "diagnostic_storage_account" {
  description = "A 'diagnostic_storage_account' block."
  type        = map(any)
  default     = null
}
#
# diagnostic_storage_account block structure:
#   connection_string (string)                : (REQUIRED) Connection String of the Diagnostic Storage Account.


variable "diagnostic_enabled" {
  description = "Whether the diagnostic log collection is enabled. Possible values are 'true' and 'false'. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the IoT Hub Device Update Instance."
  type        = map(any)
  default     = null
}
