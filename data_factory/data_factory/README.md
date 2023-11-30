# azurerm_data_factory

Manages an Azure Data Factory (Version 2).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_factory/data_factory" 
}

inputs = {
   name = "name of data_factory" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.github_configuration** | block | False | -  |  A `github_configuration` block. | 
| `github_configuration` block structure: || 
|   account_name (string): (REQUIRED) Specifies the GitHub account name. ||
|   branch_name (string): (REQUIRED) Specifies the branch of the repository to get code from. ||
|   git_url (string): (REQUIRED) Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. Use <https://github.com> for open source repositories. ||
|   repository_name (string): (REQUIRED) Specifies the name of the git repository. ||
|   root_folder (string): (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level. ||
|   publishing_enabled (bool): Is automated publishing enabled? Defaults to 'true'. ||
| **var.global_parameter** | block | False | -  |  A list of `global_parameter` blocks. | 
| `global_parameter` block structure: || 
|   name (string): (REQUIRED) Specifies the global parameter name. ||
|   type (string): (REQUIRED) Specifies the global parameter type. Possible Values are 'Array', 'Bool', 'Float', 'Int', 'Object' or 'String'. ||
|   value (string): (REQUIRED) Specifies the global parameter value. ||
| **var.identity** | block | False | -  |  An `identity` block. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Data Factory. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Data Factory. ||
| **var.vsts_configuration** | block | False | -  |  A `vsts_configuration` block. | 
| `vsts_configuration` block structure: || 
|   account_name (string): (REQUIRED) Specifies the VSTS account name. ||
|   branch_name (string): (REQUIRED) Specifies the branch of the repository to get code from. ||
|   project_name (string): (REQUIRED) Specifies the name of the VSTS project. ||
|   repository_name (string): (REQUIRED) Specifies the name of the git repository. ||
|   root_folder (string): (REQUIRED) Specifies the root folder within the repository. Set to '/' for the top level. ||
|   tenant_id (string): (REQUIRED) Specifies the Tenant ID associated with the VSTS account. ||
|   publishing_enabled (bool): Is automated publishing enabled? Defaults to 'true'. ||
| **var.managed_virtual_network_enabled** | bool | False | -  |  Is Managed Virtual Network enabled? | 
| **var.public_network_enabled** | bool | False | `True`  |  Is the Data Factory visible to the public network? Defaults to `true`. | 
| **var.customer_managed_key_id** | string | False | -  |  Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity. | 
| **var.customer_managed_key_identity_id** | string | False | -  |  Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied if `customer_managed_key_id` is set. | 
| **var.purview_id** | string | False | -  |  Specifies the ID of the purview account resource associated with the Data Factory. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Factory. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
