# azurerm_app_configuration

Manages an Azure App Configuration.## Disclaimers-> **Note:** Version 3.27.0 and later of the Azure Provider include a Feature Toggle which will purge an App Configuration resource on destroy, rather than the default soft-delete. The Provider will automatically recover a soft-deleted App Configuration during creation if one is found. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.-> **Note:** Reading and purging soft-deleted App Configurations requires the `Microsoft.AppConfiguration/locations/deletedConfigurationStores/read` and `Microsoft.AppConfiguration/locations/deletedConfigurationStores/purge/action` permission on Subscription scope. Recovering a soft-deleted App Configuration requires the `Microsoft.AppConfiguration/configurationStores/write` permission on Subscription or Resource Group scope. [More information can be found in the Azure Documentation for App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-soft-delete#permissions-to-recover-a-deleted-store). See the following links for more information on assigning [Azure custom roles](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles) or using the [`azurerm_role_assignment`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) resource to assign a custom role.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the App Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.encryption** | block | False | -  |  -  | An `encryption` block. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. | 
| **var.public_network_access** | string | False | -  |  `Enabled`, `Disabled`  | The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`. | 
| **var.purge_protection_enabled** | bool | False | `False`  |  -  | Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`. | 
| **var.replica** | block | False | -  |  -  | One or more `replica` blocks. | 
| **var.sku** | string | False | `free`  |  `free`, `standard`  | The SKU name of the App Configuration. Possible values are `free` and `standard`. Defaults to `free`. | 
| **var.soft_delete_retention_days** | int | False | `7`  |  -  | The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **encryption** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **public_network_access** | string  | - | 
| **purge_protection_enabled** | bool  | - | 
| **replica** | block  | - | 
| **sku** | string  | - | 
| **soft_delete_retention_days** | int  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Access Key. | 
| **endpoint** | string  | The URL of the App Configuration Replica. | 
| **primary_read_key** | block  | A `primary_read_key` block containing the primary read access key. | 
| **primary_write_key** | block  | A `primary_write_key` block containing the primary write access key. | 
| **secondary_read_key** | block  | A `secondary_read_key` block containing the secondary read access key. | 
| **secondary_write_key** | block  | A `secondary_write_key` block containing the secondary write access key. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 
| **connection_string** | string  | The Connection String for this Access Key - comprising of the Endpoint, ID and Secret. | 
| **secret** | string  | The Secret of the Access Key. | 