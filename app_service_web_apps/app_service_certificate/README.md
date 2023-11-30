# azurerm_app_service_certificate

Manages an App Service certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_certificate" 
}

inputs = {
   name = "name of app_service_certificate" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string |  Specifies the name of the certificate. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the certificate. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.pfx_blob** | string |  The base64-encoded contents of the certificate. Changing this forces a new resource to be created. | 
| **var.password** | string |  The password to access the certificate's private key. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string |  The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service. Changing this forces a new resource to be created. | 
| **var.key_vault_secret_id** | string |  The ID of the Key Vault secret. Changing this forces a new resource to be created. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The App Service certificate ID. | 
| **friendly_name** | string | No  | The friendly name of the certificate. | 
| **subject_name** | string | No  | The subject name of the certificate. | 
| **host_names** | string | No  | List of host names the certificate applies to. | 
| **issuer** | string | No  | The name of the certificate issuer. | 
| **issue_date** | datetime | No  | The issue date for the certificate. | 
| **expiration_date** | datetime | No  | The expiration date for the certificate. | 
| **thumbprint** | string | No  | The thumbprint for the certificate. | 
| **hosting_environment_profile_id** | string | No  | The ID of the App Service Environment where the certificate is in use. | 

Additionally, all variables are provided as outputs.
