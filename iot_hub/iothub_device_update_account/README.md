# azurerm_iothub_device_update_account

Manages an IoT Hub Device Update Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  | Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`. | 
| **sku** | string | False | `Standard`  |  `Free`, `Standard`  | Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the IoT Hub Device Update Account. | 

