# azurerm_iothub_dps_certificate

Manages an IotHub Device Provisioning Service Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created. | 
| **iot_dps_name** | string | True | -  |  -  | The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created. | 
| **certificate_content** | string | True | -  |  -  | The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content. | 
| **is_verified** | bool | False | `False`  |  -  | Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created. | 

