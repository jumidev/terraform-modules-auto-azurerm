# azurerm_app_service_managed_certificate

This certificate can be used to secure custom domains on App Services (Windows and Linux) hosted on an App Service Plan of Basic and above (free and shared tiers are not supported).~> NOTE: A certificate is valid for six months, and about a month before the certificate’s expiration date, App Services renews/rotates the certificate. This is managed by Azure and doesn't require this resource to be changed or reprovisioned. It will change the `thumbprint` computed attribute the next time the resource is refreshed after rotation occurs, so keep that in mind if you have any dependencies on this attribute directly.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.custom_hostname_binding_id** | string | True | The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the App Service Managed Certificate. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **custom_hostname_binding_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the App Service Managed Certificate. | 
| **canonical_name** | string  | The Canonical Name of the Certificate. | 
| **expiration_date** | datetime  | The expiration date of the Certificate. | 
| **friendly_name** | string  | The friendly name of the Certificate. | 
| **host_names** | string  | The list of Host Names for the Certificate. | 
| **issue_date** | datetime  | The Start date for the Certificate. | 
| **issuer** | string  | The issuer of the Certificate. | 
| **subject_name** | string  | The Subject Name for the Certificate. | 
| **thumbprint** | string  | The Certificate Thumbprint. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_managed_certificate" 
}

inputs = {
   custom_hostname_binding_id = "custom_hostname_binding_id of app_service_managed_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```