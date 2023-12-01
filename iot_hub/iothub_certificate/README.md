# azurerm_iothub_certificate

Manages an IotHub Certificate.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the IotHub Certificate resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the IotHub Certificate resource has to be created. Changing this forces a new resource to be created. | 
| **iothub_name** | string |  The name of the IoTHub that this certificate will be attached to. Changing this forces a new resource to be created. | 
| **certificate_content** | string |  The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **is_verified** | bool |  `False`  |  Is the certificate verified? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Certificate. | 

Additionally, all variables are provided as outputs.
