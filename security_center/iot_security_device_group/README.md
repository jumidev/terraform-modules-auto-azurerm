# azurerm_iot_security_device_group

Manages a Iot Security Device Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Device Security Group. Changing this forces a new resource to be created. | 
| **var.iothub_id** | string | True | The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created. | 
| **var.allow_rule** | block | False | an `allow_rule` blocks. | 
| **var.range_rule** | block | False | One or more `range_rule` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **iothub_id** | string  | - | 
| **allow_rule** | block  | - | 
| **range_rule** | block  | - | 
| **id** | string  | The ID of the Iot Security Device Group resource. | 

## Example minimal hclt

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