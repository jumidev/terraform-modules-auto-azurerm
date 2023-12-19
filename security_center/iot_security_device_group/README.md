# azurerm_iot_security_device_group

Manages a Iot Security Device Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "security_center/iot_security_device_group"   
}

inputs = {
   name = "Specifies the name of the Device Security Group"   
   # iothub_id → set in component_inputs
}

component_inputs = {
   iothub_id = "path/to/iothub_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Device Security Group. Changing this forces a new resource to be created. | 
| **iothub_id** | string |  The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **allow_rule** | [block](#allow_rule-block-structure) |  an `allow_rule` blocks. | 
| **range_rule** | [block](#range_rule-block-structure) |  One or more `range_rule` blocks. | 

### `range_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `duration` | string | Yes | - | Specifies the time range. represented in ISO 8601 duration format. |
| `max` | string | Yes | - | The maximum threshold in the given time window. |
| `min` | string | Yes | - | The minimum threshold in the given time window. |
| `type` | string | Yes | - | The type of supported rule type. Possible Values are 'ActiveConnectionsNotInAllowedRange', 'AmqpC2DMessagesNotInAllowedRange', 'MqttC2DMessagesNotInAllowedRange', 'HttpC2DMessagesNotInAllowedRange', 'AmqpC2DRejectedMessagesNotInAllowedRange', 'MqttC2DRejectedMessagesNotInAllowedRange', 'HttpC2DRejectedMessagesNotInAllowedRange', 'AmqpD2CMessagesNotInAllowedRange', 'MqttD2CMessagesNotInAllowedRange', 'HttpD2CMessagesNotInAllowedRange', 'DirectMethodInvokesNotInAllowedRange', 'FailedLocalLoginsNotInAllowedRange', 'FileUploadsNotInAllowedRange', 'QueuePurgesNotInAllowedRange', 'TwinUpdatesNotInAllowedRange' and 'UnauthorizedOperationsNotInAllowedRange'. |

### `allow_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_from_ips_not_allowed` | bool | No | - | Specifies which IP is not allowed to be connected to in current device group for inbound connection. |
| `connection_to_ips_not_allowed` | bool | No | - | Specifies which IP is not allowed to be connected to in current device group for outbound connection. |
| `local_users_not_allowed` | bool | No | - | Specifies which local user is not allowed to login in current device group. |
| `processes_not_allowed` | bool | No | - | Specifies which process is not allowed to be executed in current device group. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Iot Security Device Group resource. | 

Additionally, all variables are provided as outputs.
