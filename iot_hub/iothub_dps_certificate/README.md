# azurerm_iothub_dps_certificate

Manages an IotHub Device Provisioning Service Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_dps_certificate" 
}

inputs = {
   name = "name of iothub_dps_certificate" 
   resource_group_name = "${resource_group}" 
   iot_dps_name = "iot_dps_name of iothub_dps_certificate" 
   certificate_content = "certificate_content of iothub_dps_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created. | 
| **var.iot_dps_name** | string | True | -  |  The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created. | 
| **var.certificate_content** | string | True | -  |  The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content. | 
| **var.is_verified** | bool | False | `False`  |  Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Device Provisioning Service Certificate. | 

Additionally, all variables are provided as outputs.
