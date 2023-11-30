# azurerm_function_app

Manages a Function App.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_linux_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) and [`azurerm_windows_function_app`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app) resources instead.~> **Note:** To connect an Azure Function App and a subnet within the same region `azurerm_app_service_virtual_network_swift_connection` can be used.For an example, check the `azurerm_app_service_virtual_network_swift_connection` documentation.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb). | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Function App. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  -  |  The ID of the App Service Plan within which to create this Function App. | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.auth_settings** | block | False | -  |  -  |  A `auth_settings` block. | 
| **var.connection_string** | block | False | -  |  -  |  An `connection_string` block. | 
| **var.client_cert_mode** | string | False | -  |  `Required`, `Optional`  |  The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`. | 
| **var.daily_memory_time_quota** | string | False | -  |  -  |  The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Function App enabled? Defaults to `true`. | 
| **var.enable_builtin_logging** | bool | False | `True`  |  -  |  Should the built-in logging of this Function App be enabled? Defaults to `true`. | 
| **var.https_only** | bool | False | `False`  |  -  |  Can the Function App only be accessed via HTTPS? Defaults to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.key_vault_reference_identity_id** | string | False | -  |  -  |  The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information. | 
| **var.os_type** | string | False | ``  |  `linux`, ``  |  A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`. | 
| **var.site_config** | block | False | -  |  -  |  A `site_config` object as defined below. | 
| **var.source_control** | block | False | -  |  -  |  A `source_control` block, as defined below. | 
| **var.storage_account_name** | string | True | -  |  -  |  The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created. | 
| **var.storage_account_access_key** | string | True | -  |  -  |  The access key which will be used to access the backend storage account for the Function App. | 
| **var.version** | string | False | `~1`  |  -  |  The runtime version associated with the Function App. Defaults to `~1`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **app_service_plan_id** | string  | - | 
| **app_settings** | string  | - | 
| **auth_settings** | block  | - | 
| **connection_string** | block  | - | 
| **client_cert_mode** | string  | - | 
| **daily_memory_time_quota** | string  | - | 
| **enabled** | bool  | - | 
| **enable_builtin_logging** | bool  | - | 
| **https_only** | bool  | - | 
| **identity** | block  | - | 
| **key_vault_reference_identity_id** | string  | - | 
| **os_type** | string  | - | 
| **site_config** | block  | - | 
| **source_control** | block  | - | 
| **storage_account_name** | string  | - | 
| **storage_account_access_key** | string  | - | 
| **version** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Function App | 
| **custom_domain_verification_id** | string  | An identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string  | The default hostname associated with the Function App - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **possible_outbound_ip_addresses** | string  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this App Service. | 
| **site_credential** | block  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service. | 
| **kind** | string  | The Function App kind - such as `functionapp,linux,container` | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string  | The username which can be used to publish to this App Service | 
| **password** | string  | The password associated with the username, which can be used to publish to this App Service. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app" 
}

inputs = {
   name = "name of function_app" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of function_app" 
   storage_account_name = "storage_account_name of function_app" 
   storage_account_access_key = "storage_account_access_key of function_app" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```