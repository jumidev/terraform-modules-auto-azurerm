# azurerm_iotcentral_application_network_rule_set

Manages an IoT Central Application Network Rule Set.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.iotcentral_application_id** | string | True | -  |  -  | The ID of the IoT Central Application. Changing this forces a new resource to be created. | 
| **var.apply_to_device** | bool | False | `True`  |  `true`, `false`  | Whether these IP Rules apply for device connectivity to IoT Hub and Device Provisioning Service associated with this IoT Central Application. Possible values are `true`, `false`. Defaults to `true` | 
| **var.default_action** | string | False | `Deny`  |  `Allow`, `Deny`  | Specifies the default action for the IoT Central Application Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Deny`. | 
| **var.ip_rule** | block | False | -  |  -  | One or more `ip_rule` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **iotcentral_application_id** | string  | - | 
| **apply_to_device** | bool  | - | 
| **default_action** | string  | - | 
| **ip_rule** | block  | - | 
| **id** | string  | The ID of the IoT Central Application Network Rule Set. | 