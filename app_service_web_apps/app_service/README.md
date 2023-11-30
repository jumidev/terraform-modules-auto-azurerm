# azurerm_app_service

Manages an App Service (within an App Service Plan).!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) and [`azurerm_windows_web_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_web_app) resources instead.-> **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azurerm_app_service` resource will be overwritten when promoting a Slot using the `azurerm_app_service_active_slot` resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service" 
}

inputs = {
   name = "name of app_service" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of app_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the App Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the App Service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  -  |  The ID of the App Service Plan within which to create this App Service. | 
| **var.app_settings** | string | False | -  |  -  |  A key-value pair of App Settings. | 
| **var.auth_settings** | block | False | -  |  -  |  A `auth_settings` block. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | 
| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | 
| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should the App Service send session affinity cookies, which route client requests in the same session to the same instance? | 
| **var.client_cert_enabled** | bool | False | `False`  |  -  |  Does the App Service require client certificates for incoming requests? Defaults to `false`. | 
| **var.client_cert_mode** | string | False | -  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the App Service Enabled? Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.https_only** | bool | False | `False`  |  -  |  Can the App Service only be accessed via HTTPS? Defaults to `false`. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.logs** | block | False | -  |  -  |  A `logs` block. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.site_config** | block | False | -  |  -  |  A `site_config` block. | 
| **var.source_control** | block | False | -  |  -  |  A `source_control` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service. | 
| **custom_domain_verification_id** | string | No  | An identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_site_hostname** | string | No  | The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]` | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`. | 
| **source_control** | block | No  | A `source_control` block, which contains the Source Control information when `scm_type` is set to `LocalGit`. | 
| **site_credential** | block | No  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this App Service. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string | No  | The username which can be used to publish to this App Service | 
| **password** | string | No  | The password associated with the username, which can be used to publish to this App Service. | 
| **repo_url** | string | No  | URL of the Git repository for this App Service. | 
| **branch** | string | No  | Branch name of the Git repository for this App Service. | 

Additionally, all variables are provided as outputs.
