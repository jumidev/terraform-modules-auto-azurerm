# azurerm_container_app_environment_certificate

Manages a Container App Environment Certificate.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created. | 
| **var.container_app_environment_id** | string |  The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created. | 
| **var.certificate_blob_base64** | string |  The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created. | 
| **var.certificate_password** | string |  The password for the Certificate. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App Environment Certificate | 
| **expiration_date** | datetime | No  | The expiration date for the Certificate. | 
| **issue_date** | datetime | No  | The date of issue for the Certificate. | 
| **issuer** | string | No  | The Certificate Issuer. | 
| **subject_name** | string | No  | The Subject Name for the Certificate. | 
| **thumbprint** | string | No  | The Thumbprint of the Certificate. | 

Additionally, all variables are provided as outputs.
