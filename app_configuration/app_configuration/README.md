# azurerm_app_configuration

Manages an Azure App Configuration.## Disclaimers-> **Note:** Version 3.27.0 and later of the Azure Provider include a Feature Toggle which will purge an App Configuration resource on destroy, rather than the default soft-delete. The Provider will automatically recover a soft-deleted App Configuration during creation if one is found. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.-> **Note:** Reading and purging soft-deleted App Configurations requires the `Microsoft.AppConfiguration/locations/deletedConfigurationStores/read` and `Microsoft.AppConfiguration/locations/deletedConfigurationStores/purge/action` permission on Subscription scope. Recovering a soft-deleted App Configuration requires the `Microsoft.AppConfiguration/configurationStores/write` permission on Subscription or Resource Group scope. [More information can be found in the Azure Documentation for App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-soft-delete#permissions-to-recover-a-deleted-store). See the following links for more information on assigning [Azure custom roles](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles) or using the [`azurerm_role_assignment`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) resource to assign a custom role.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the App Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **encryption** | block | False | -  |  -  | An `encryption` block. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. | 
| **public_network_access** | string | False | -  |  `Enabled`, `Disabled`  | The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`. | 
| **purge_protection_enabled** | bool | False | `False`  |  -  | Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`. | 
| **replica** | block | False | -  |  -  | One or more `replica` blocks. | 
| **sku** | string | False | `free`  |  `free`, `standard`  | The SKU name of the App Configuration. Possible values are `free` and `standard`. Defaults to `free`. | 
| **soft_delete_retention_days** | int | False | `7`  |  -  | The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

