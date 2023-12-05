# azurerm_iothub_device_update_instance

Manages an IoT Hub Device Update Instance.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "iot_hub/iothub_device_update_instance"   
}

inputs = {
   name = "Specifies the name which should be used for this IoT Hub Device Update Instance..."   
   device_update_account_id = "Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device U..."   
   # iothub_id → set in tfstate_inputs
}

tfstate_inputs = {
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
| **name** | string |  Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 
| **device_update_account_id** | string |  Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created. | 
| **iothub_id** | string |  Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **diagnostic_storage_account** | [block](#diagnostic_storage_account-block-structure) |  -  |  -  |  A `diagnostic_storage_account` block. | 
| **diagnostic_enabled** | bool |  `False`  |  `true`, `false`  |  Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the IoT Hub Device Update Instance. | 

### `diagnostic_storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_string` | string | Yes | - | Connection String of the Diagnostic Storage Account. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Hub Device Update Instance. | 

Additionally, all variables are provided as outputs.
