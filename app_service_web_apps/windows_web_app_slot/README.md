# azurerm_windows_web_app_slot

Manages a Windows Web App Slot.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/windows_web_app_slot" 
}

inputs = {
   name = "name of windows_web_app_slot" 
   app_service_id = "app_service_id of windows_web_app_slot" 
   site_config = "site_config of windows_web_app_slot" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created. | 
| **var.app_service_id** | string | True | -  |  -  |  The ID of the Windows Web App this Deployment Slot will be part of. Changing this forces a new Windows Web App to be created. | 
| **var.site_config** | block | True | -  |  -  |  A `site_config` block. | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs of App Settings. | 
| **var.auth_settings** | block | False | -  |  -  |  An `auth_settings` block. | 
| **var.auth_settings_v2** | block | False | -  |  -  |  An `auth_settings_v2` block. | 
| **var.backup** | block | False | -  |  -  |  A `backup` block. | 
| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should Client Affinity be enabled? | 
| **var.client_certificate_enabled** | bool | False | -  |  -  |  Should Client Certificates be enabled? | 
| **var.client_certificate_mode** | string | False | `Required`  |  `Required`, `Optional`, `OptionalInteractiveUser`  |  The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`. | 
| **var.client_certificate_exclusion_paths** | string | False | -  |  -  |  Paths to exclude when using client certificates, separated by ; | 
| **var.connection_string** | block | False | -  |  -  |  One or more `connection_string` blocks. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should the Windows Web App Slot be enabled? Defaults to `true`. | 
| **var.ftp_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`. | 
| **var.https_only** | string | False | -  |  -  |  Should the Windows Web App Slot require HTTPS connections. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Should public network access be enabled for the Web App. Defaults to `true`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) | 
| **var.logs** | block | False | -  |  -  |  A `logs` block. | 
| **var.service_plan_id** | string | False | -  |  -  |  The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used. | 
| **var.storage_account** | block | False | -  |  -  |  One or more `storage_account` blocks. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Windows Web App Slot. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.webdeploy_publish_basic_authentication_enabled** | bool | False | `True`  |  -  |  Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to`true`. | 
| **var.zip_deploy_file** | string | False | -  |  -  |  The local path and filename of the Zip packaged application to deploy to this Windows Web App. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Windows Web App Slot. | 
| **custom_domain_verification_id** | string | No  | The identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **hosting_environment_id** | string | No  | The ID of the App Service Environment used by App Service Slot. | 
| **default_hostname** | string | No  | The default hostname of the Windows Web App Slot. | 
| **identity** | block | No  | An `identity` block. | 
| **kind** | string | No  | The Kind value for this Windows Web App Slot. | 
| **outbound_ip_address_list** | list | No  | A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`. | 
| **possible_outbound_ip_address_list** | list | No  | A list of possible outbound ip address. | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **site_credential** | block | No  | A `site_credential` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **name** | string | No  | The Site Credentials Username used for publishing. | 
| **password** | string | No  | The Site Credentials Password used for publishing. | 

Additionally, all variables are provided as outputs.
