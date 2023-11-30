# azurerm_iothub_certificate

Manages an IotHub Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_certificate" 
}

inputs = {
   name = "name of iothub_certificate" 
   resource_group_name = "${resource_group}" 
   iothub_name = "iothub_name of iothub_certificate" 
   certificate_content = "certificate_content of iothub_certificate" 
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
| **var.name** | string | True | -  |  Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string | True | -  |  The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created. | 
| **var.certificate_content** | string | True | -  |  The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content. | 
| **var.is_verified** | bool | False | `False`  |  Is the certificate verified? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Certificate. | 

Additionally, all variables are provided as outputs.
