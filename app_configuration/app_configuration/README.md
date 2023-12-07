# azurerm_app_configuration

Manages an Azure App Configuration.## Disclaimers-> **Note:** Version 3.27.0 and later of the Azure Provider include a Feature Toggle which will purge an App Configuration resource on destroy, rather than the default soft-delete. The Provider will automatically recover a soft-deleted App Configuration during creation if one is found. See [the Features block documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block) for more information on Feature Toggles within Terraform.-> **Note:** Reading and purging soft-deleted App Configurations requires the `Microsoft.AppConfiguration/locations/deletedConfigurationStores/read` and `Microsoft.AppConfiguration/locations/deletedConfigurationStores/purge/action` permission on Subscription scope. Recovering a soft-deleted App Configuration requires the `Microsoft.AppConfiguration/configurationStores/write` permission on Subscription or Resource Group scope. [More information can be found in the Azure Documentation for App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/concept-soft-delete#permissions-to-recover-a-deleted-store). See the following links for more information on assigning [Azure custom roles](https://learn.microsoft.com/en-us/azure/role-based-access-control/custom-roles) or using the [`azurerm_role_assignment`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) resource to assign a custom role.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "app_configuration/app_configuration"   
}

inputs = {
   name = "Specifies the name of the App Configuration"   
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
| **name** | string |  Specifies the name of the App Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  -  |  An `encryption` block. | 
| **local_auth_enabled** | bool |  `True`  |  -  |  Whether local authentication methods is enabled. Defaults to `true`. | 
| **public_network_access** | string |  -  |  `Enabled`, `Disabled`  |  The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`. | 
| **purge_protection_enabled** | bool |  `False`  |  -  |  Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`. | 
| **replica** | [block](#replica-block-structure) |  -  |  -  |  One or more `replica` blocks. | 
| **sku** | string |  `free`  |  `free`, `standard`  |  The SKU name of the App Configuration. Possible values are `free` and `standard`. Defaults to `free`. | 
| **soft_delete_retention_days** | int |  `7`  |  -  |  The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `replica` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | Specifies the supported Azure location where the replica exists. |
| `name` | string | Yes | - | Specifies the name of the replica. |

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_identifier` | string | No | - | Specifies the URI of the key vault key used to encrypt data. |
| `identity_client_id` | string | No | - | Specifies the client id of the identity which will be used to access key vault. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this App Configuration. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | Yes  | The ID of the Access Key. | 
| **endpoint** | string | No  | The URL of the App Configuration Replica. | 
| **primary_read_key** | block | No  | A `primary_read_key` block containing the primary read access key. | 
| **primary_write_key** | block | No  | A `primary_write_key` block containing the primary write access key. | 
| **secondary_read_key** | block | No  | A `secondary_read_key` block containing the secondary read access key. | 
| **secondary_write_key** | block | No  | A `secondary_write_key` block containing the secondary write access key. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **connection_string** | string | Yes  | The Connection String for this Access Key - comprising of the Endpoint, ID and Secret. | 
| **secret** | string | Yes  | The Secret of the Access Key. | 

Additionally, all variables are provided as outputs.
