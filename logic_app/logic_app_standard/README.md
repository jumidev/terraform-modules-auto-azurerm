# azurerm_logic_app_standard

Manages a Logic App (Standard / Single Tenant)

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_standard" 
}

inputs = {
   name = "name of logic_app_standard" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   app_service_plan_id = "app_service_plan_id of logic_app_standard" 
   storage_account_name = "storage_account_name of logic_app_standard" 
   storage_account_access_key = "storage_account_access_key of logic_app_standard" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Logic App Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.app_service_plan_id** | string | True | -  |  -  |  The ID of the App Service Plan within which to create this Logic App | 
| **var.app_settings** | string | False | -  |  -  |  A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values. | 
| **var.use_extension_bundle** | bool | False | `True`  |  -  |  Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`. | 
| **var.bundle_version** | string | False | `[1.*, 2.0.0)`  |  -  |  If `use_extension_bundle` then controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`. | 
| **var.connection_string** | block | False | -  |  -  |  An `connection_string` block. | 
| **var.client_affinity_enabled** | bool | False | -  |  -  |  Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance? | 
| **var.client_certificate_mode** | string | False | -  |  `Required`, `Optional`  |  The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Logic App enabled? Defaults to `true`. | 
| **var.https_only** | bool | False | `False`  |  -  |  Can the Logic App only be accessed via HTTPS? Defaults to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.site_config** | block | False | -  |  -  |  A `site_config` object as defined below. | 
| **var.storage_account_name** | string | True | -  |  -  |  The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created. | 
| **var.storage_account_access_key** | string | True | -  |  -  |  The access key which will be used to access the backend storage account for the Logic App | 
| **var.storage_account_share_name** | string | False | -  |  -  |  The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using azurerm_storage_share | 
| **var.version** | string | False | `~3`  |  -  |  The runtime version associated with the Logic App. Defaults to `~3`. | 
| **var.virtual_network_subnet_id** | string | False | -  |  -  |  The subnet id which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration). | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `connection_string` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Connection String. |
| `type` | string | Yes | - | The type of the Connection String. Possible values are 'APIHub', 'Custom', 'DocDb', 'EventHub', 'MySQL', 'NotificationHub', 'PostgreSQL', 'RedisCache', 'ServiceBus', 'SQLAzure' and 'SQLServer'. |
| `value` | string | Yes | - | The value for the Connection String. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard. |

### `site_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `always_on` | bool | No | False | Should the Logic App be loaded at all times? Defaults to 'false'. |
| `app_scale_limit` | int | No | - | The number of workers this Logic App can scale out to. Only applicable to apps on the Consumption and Premium plan. |
| `cors` | block | No | - | A 'cors' block. |
| `dotnet_framework_version` | string | No | v4.0 | The version of the .NET framework's CLR used in this Logic App Possible values are 'v4.0' (including .NET Core 2.1 and 3.1), 'v5.0' and 'v6.0'. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to 'v4.0'. |
| `elastic_instance_minimum` | int | No | - | The number of minimum instances for this Logic App Only affects apps on the Premium plan. |
| `ftps_state` | string | No | AllAllowed | State of FTP / FTPS service for this Logic App Possible values include: 'AllAllowed', 'FtpsOnly' and 'Disabled'. Defaults to 'AllAllowed'. |
| `health_check_path` | string | No | - | Path which will be checked for this Logic App health. |
| `http2_enabled` | bool | No | False | Specifies whether or not the HTTP2 protocol should be enabled. Defaults to 'false'. |
| `ip_restriction` | block | No | - | A list of 'ip_restriction' objects representing IP restrictions as defined below. |
| `scm_ip_restriction` | block | No | - | A list of 'scm_ip_restriction' objects representing SCM IP restrictions as defined below. |
| `scm_use_main_ip_restriction` | bool | No | False | Should the Logic App 'ip_restriction' configuration be used for the SCM too. Defaults to 'false'. |
| `scm_min_tls_version` | string | No | - | Configures the minimum version of TLS required for SSL requests to the SCM site. Possible values are '1.0', '1.1' and '1.2'. |
| `scm_type` | string | No | None | The type of Source Control used by the Logic App in use by the Windows Function App. Defaults to 'None'. Possible values are: 'BitbucketGit', 'BitbucketHg', 'CodePlexGit', 'CodePlexHg', 'Dropbox', 'ExternalGit', 'ExternalHg', 'GitHub', 'LocalGit', 'None', 'OneDrive', 'Tfs', 'VSO', and 'VSTSRM' |
| `linux_fx_version` | string | No | - | Linux App Framework and version for the AppService, e.g. 'DOCKER|(golang:latest)'. Setting this value will also set the 'kind' of application deployed to 'functionapp,linux,container,workflowapp' |
| `min_tls_version` | string | No | 1.2 | The minimum supported TLS version for the Logic App Possible values are '1.0', '1.1', and '1.2'. Defaults to '1.2' for new Logic Apps. |
| `pre_warmed_instance_count` | int | No | - | The number of pre-warmed instances for this Logic App Only affects apps on the Premium plan. |
| `runtime_scale_monitoring_enabled` | bool | No | False | Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to 'false'. |
| `use_32_bit_worker_process` | bool | No | True | Should the Logic App run in 32 bit mode, rather than 64 bit mode? Defaults to 'true'. |
| `vnet_route_all_enabled` | bool | No | - | Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied. |
| `websockets_enabled` | bool | No | - | Should WebSockets be enabled? |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App | 
| **custom_domain_verification_id** | string | No  | An identifier used by App Service to perform domain ownership verification via DNS TXT record. | 
| **default_hostname** | string | No  | The default hostname associated with the Logic App - such as `mysite.azurewebsites.net` | 
| **outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12` | 
| **possible_outbound_ip_addresses** | string | No  | A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this App Service. | 
| **site_credential** | block | No  | A `site_credential` block, which contains the site-level credentials used to publish to this App Service. | 
| **kind** | string | No  | The Logic App kind - will be `functionapp,workflowapp` | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service. | 
| **username** | string | No  | The username which can be used to publish to this App Service | 
| **password** | string | No  | The password associated with the username, which can be used to publish to this App Service. | 
| **auto_swap_slot_name** | string | No  | The Auto-swap slot name. | 

Additionally, all variables are provided as outputs.
