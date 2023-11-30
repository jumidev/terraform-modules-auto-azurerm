# azurerm_container_app_environment_certificate

Manages a Container App Environment Certificate.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created. | 
| **var.container_app_environment_id** | string | True | The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created. | 
| **var.certificate_blob_base64** | string | True | The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created. | 
| **var.certificate_password** | string | True | The password for the Certificate. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **container_app_environment_id** | string  | - | 
| **certificate_blob_base64** | string  | - | 
| **certificate_password** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Container App Environment Certificate | 
| **expiration_date** | datetime  | The expiration date for the Certificate. | 
| **issue_date** | datetime  | The date of issue for the Certificate. | 
| **issuer** | string  | The Certificate Issuer. | 
| **subject_name** | string  | The Subject Name for the Certificate. | 
| **thumbprint** | string  | The Thumbprint of the Certificate. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app_environment_certificate" 
}

inputs = {
   name = "name of container_app_environment_certificate" 
   container_app_environment_id = "container_app_environment_id of container_app_environment_certificate" 
   certificate_blob_base64 = "certificate_blob_base64 of container_app_environment_certificate" 
   certificate_password = "certificate_password of container_app_environment_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```