# azurerm_iot_security_device_group

Manages a Iot Security Device Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Device Security Group. Changing this forces a new resource to be created. | 
| **iothub_id** | string | True | -  |  -  | The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created. | 
| **allow_rule** | block | False | -  |  -  | an `allow_rule` blocks. | 
| **range_rule** | block | False | -  |  -  | One or more `range_rule` blocks. | 

