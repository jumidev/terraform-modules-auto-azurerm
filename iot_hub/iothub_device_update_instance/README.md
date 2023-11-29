# azurerm_iothub_device_update_instance

Manages an IoT Hub Device Update Instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 
| **device_update_account_id** | string | True | -  |  -  | Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created. | 
| **iothub_id** | string | True | -  |  -  | Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 
| **diagnostic_storage_account** | block | False | -  |  -  | A `diagnostic_storage_account` block. | 
| **diagnostic_enabled** | bool | False | `False`  |  `true`, `false`  | Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the IoT Hub Device Update Instance. | 

