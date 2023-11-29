# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Device Security Group. Changing this forces a new resource to be created."
  type        = string

}
variable "iothub_id" {
  description = "(REQUIRED) The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_rule" {
  description = "an 'allow_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# allow_rule block structure            :
#   connection_from_ips_not_allowed (bool): Specifies which IP is not allowed to be connected to in current device group for inbound connection.
#   connection_to_ips_not_allowed (bool)  : Specifies which IP is not allowed to be connected to in current device group for outbound connection.
#   local_users_not_allowed (bool)        : Specifies which local user is not allowed to login in current device group.
#   processes_not_allowed (bool)          : Specifies which process is not allowed to be executed in current device group.


variable "range_rule" {
  description = "One or more 'range_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# range_rule block structure:
#   duration (string)         : (REQUIRED) Specifies the time range. represented in ISO 8601 duration format.
#   max (string)              : (REQUIRED) The maximum threshold in the given time window.
#   min (string)              : (REQUIRED) The minimum threshold in the given time window.
#   type (string)             : (REQUIRED) The type of supported rule type. Possible Values are 'ActiveConnectionsNotInAllowedRange', 'AmqpC2DMessagesNotInAllowedRange', 'MqttC2DMessagesNotInAllowedRange', 'HttpC2DMessagesNotInAllowedRange', 'AmqpC2DRejectedMessagesNotInAllowedRange', 'MqttC2DRejectedMessagesNotInAllowedRange', 'HttpC2DRejectedMessagesNotInAllowedRange', 'AmqpD2CMessagesNotInAllowedRange', 'MqttD2CMessagesNotInAllowedRange', 'HttpD2CMessagesNotInAllowedRange', 'DirectMethodInvokesNotInAllowedRange', 'FailedLocalLoginsNotInAllowedRange', 'FileUploadsNotInAllowedRange', 'QueuePurgesNotInAllowedRange', 'TwinUpdatesNotInAllowedRange' and 'UnauthorizedOperationsNotInAllowedRange'.


