# azurerm_iothub_device_update_account

Manages an IoT Hub Device Update Account.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  |  Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`. | 
| **var.sku** | string | False | `Standard`  |  `Free`, `Standard`  |  Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the IoT Hub Device Update Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **sku** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Hub Device Update Account. | 
| **host_name** | string  | The API host name of the IoT Hub Device Update Account. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_device_update_account" 
}

inputs = {
   name = "name of iothub_device_update_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```