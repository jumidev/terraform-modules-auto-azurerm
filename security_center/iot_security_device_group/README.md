# azurerm_iot_security_device_group

Manages a Iot Security Device Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/iot_security_device_group" 
}

inputs = {
   name = "name of iot_security_device_group" 
   iothub_id = "iothub_id of iot_security_device_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Device Security Group. Changing this forces a new resource to be created. | 
| **var.iothub_id** | string | True | The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created. | 
| **var.allow_rule** | block | False | an `allow_rule` blocks. | 
| `allow_rule` block structure: || 
|   connection_from_ips_not_allowed (bool): Specifies which IP is not allowed to be connected to in current device group for inbound connection. ||
|   connection_to_ips_not_allowed (bool): Specifies which IP is not allowed to be connected to in current device group for outbound connection. ||
|   local_users_not_allowed (bool): Specifies which local user is not allowed to login in current device group. ||
|   processes_not_allowed (bool): Specifies which process is not allowed to be executed in current device group. ||
| **var.range_rule** | block | False | One or more `range_rule` blocks. | 
| `range_rule` block structure: || 
|   duration (string): (REQUIRED) Specifies the time range. represented in ISO 8601 duration format. ||
|   max (string): (REQUIRED) The maximum threshold in the given time window. ||
|   min (string): (REQUIRED) The minimum threshold in the given time window. ||
|   type (string): (REQUIRED) The type of supported rule type. Possible Values are 'ActiveConnectionsNotInAllowedRange', 'AmqpC2DMessagesNotInAllowedRange', 'MqttC2DMessagesNotInAllowedRange', 'HttpC2DMessagesNotInAllowedRange', 'AmqpC2DRejectedMessagesNotInAllowedRange', 'MqttC2DRejectedMessagesNotInAllowedRange', 'HttpC2DRejectedMessagesNotInAllowedRange', 'AmqpD2CMessagesNotInAllowedRange', 'MqttD2CMessagesNotInAllowedRange', 'HttpD2CMessagesNotInAllowedRange', 'DirectMethodInvokesNotInAllowedRange', 'FailedLocalLoginsNotInAllowedRange', 'FileUploadsNotInAllowedRange', 'QueuePurgesNotInAllowedRange', 'TwinUpdatesNotInAllowedRange' and 'UnauthorizedOperationsNotInAllowedRange'. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Iot Security Device Group resource. | 

Additionally, all variables are provided as outputs.
