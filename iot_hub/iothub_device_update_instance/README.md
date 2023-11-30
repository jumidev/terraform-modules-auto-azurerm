# azurerm_iothub_device_update_instance

Manages an IoT Hub Device Update Instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_device_update_instance" 
}

inputs = {
   name = "name of iothub_device_update_instance" 
   device_update_account_id = "device_update_account_id of iothub_device_update_instance" 
   iothub_id = "iothub_id of iothub_device_update_instance" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 
| **var.device_update_account_id** | string | True | -  |  -  |  Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created. | 
| **var.iothub_id** | string | True | -  |  -  |  Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 
| **var.diagnostic_storage_account** | block | False | -  |  -  |  A `diagnostic_storage_account` block. | 
| **var.diagnostic_enabled** | bool | False | `False`  |  `true`, `false`  |  Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the IoT Hub Device Update Instance. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Hub Device Update Instance. | 

Additionally, all variables are provided as outputs.
