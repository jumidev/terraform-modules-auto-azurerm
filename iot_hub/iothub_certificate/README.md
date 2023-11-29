# azurerm_iothub_certificate

Manages an IotHub Certificate.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string | True | -  |  -  | The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created. | 
| **var.certificate_content** | string | True | -  |  -  | The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content. | 
| **var.is_verified** | bool | False | `False`  |  -  | Is the certificate verified? Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **iothub_name** | string  | - | 
| **certificate_content** | string  | - | 
| **is_verified** | bool  | - | 
| **id** | string  | The ID of the IoTHub Certificate. | 