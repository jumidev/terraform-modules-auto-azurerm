# azurerm_app_service_managed_certificate

This certificate can be used to secure custom domains on App Services (Windows and Linux) hosted on an App Service Plan of Basic and above (free and shared tiers are not supported).~> NOTE: A certificate is valid for six months, and about a month before the certificate’s expiration date, App Services renews/rotates the certificate. This is managed by Azure and doesn't require this resource to be changed or reprovisioned. It will change the `thumbprint` computed attribute the next time the resource is refreshed after rotation occurs, so keep that in mind if you have any dependencies on this attribute directly.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.custom_hostname_binding_id** | string |  The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the App Service Managed Certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Managed Certificate. | 
| **canonical_name** | string | No  | The Canonical Name of the Certificate. | 
| **expiration_date** | datetime | No  | The expiration date of the Certificate. | 
| **friendly_name** | string | No  | The friendly name of the Certificate. | 
| **host_names** | string | No  | The list of Host Names for the Certificate. | 
| **issue_date** | datetime | No  | The Start date for the Certificate. | 
| **issuer** | string | No  | The issuer of the Certificate. | 
| **subject_name** | string | No  | The Subject Name for the Certificate. | 
| **thumbprint** | string | No  | The Certificate Thumbprint. | 

Additionally, all variables are provided as outputs.
