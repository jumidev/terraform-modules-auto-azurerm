# azurerm_data_factory

Manages an Azure Data Factory (Version 2).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_factory/data_factory"   
}

inputs = {
   name = "Specifies the name of the Data Factory"   
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
| **name** | string |  Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **github_configuration** | [block](#github_configuration-block-structure) |  -  |  -  |  A `github_configuration` block. | 
| **global_parameter** | [block](#global_parameter-block-structure) |  -  |  -  |  A list of `global_parameter` blocks. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **vsts_configuration** | [block](#vsts_configuration-block-structure) |  -  |  -  |  A `vsts_configuration` block. | 
| **managed_virtual_network_enabled** | bool |  -  |  -  |  Is Managed Virtual Network enabled? | 
| **public_network_enabled** | bool |  `True`  |  -  |  Is the Data Factory visible to the public network? Defaults to `true`. | 
| **customer_managed_key_id** | string |  -  |  -  |  Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity. | 
| **customer_managed_key_identity_id** | string |  -  |  `customer_managed_key_id`  |  Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if `customer_managed_key_id` is set. | 
| **purview_id** | string |  -  |  -  |  Specifies the ID of the purview account resource associated with the Data Factory. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `global_parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the global parameter name. |
| `type` | string | Yes | - | Specifies the global parameter type. Possible Values are 'Array', 'Bool', 'Float', 'Int', 'Object' or 'String'. |
| `value` | string | Yes | - | Specifies the global parameter value. |

### `github_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | Specifies the GitHub account name. |
| `branch_name` | string | Yes | - | Specifies the branch of the repository to get code from. |
| `git_url` | string | Yes | - | Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. Use <https://github.com> for open source repositories. |
| `repository_name` | string | Yes | - | Specifies the name of the git repository. |
| `root_folder` | string | Yes | - | Specifies the root folder within the repository. Set to '/' for the top level. |
| `publishing_enabled` | bool | No | True | Is automated publishing enabled? Defaults to 'true'. |

### `vsts_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | Specifies the VSTS account name. |
| `branch_name` | string | Yes | - | Specifies the branch of the repository to get code from. |
| `project_name` | string | Yes | - | Specifies the name of the VSTS project. |
| `repository_name` | string | Yes | - | Specifies the name of the git repository. |
| `root_folder` | string | Yes | - | Specifies the root folder within the repository. Set to '/' for the top level. |
| `tenant_id` | string | Yes | - | Specifies the Tenant ID associated with the VSTS account. |
| `publishing_enabled` | bool | No | True | Is automated publishing enabled? Defaults to 'true'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Factory. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Data Factory. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
