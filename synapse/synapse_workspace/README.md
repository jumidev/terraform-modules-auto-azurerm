# azurerm_synapse_workspace

Manages a Synapse Workspace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_workspace"   
}

inputs = {
   name = "Specifies the name which should be used for this synapse Workspace..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # storage_data_lake_gen2_filesystem_id → set in component_inputs
}

component_inputs = {
   storage_data_lake_gen2_filesystem_id = "path/to/storage_data_lake_gen2_filesystem_component:id"   
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
| **name** | string |  Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **storage_data_lake_gen2_filesystem_id** | string |  Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **sql_administrator_login** | string |  -  |  Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **sql_administrator_login_password** | string |  `Random string of 32 characters`  |  The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **azuread_authentication_only** | bool |  `False`  |  Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`. | 
| **aad_admin** | [block](#aad_admin-block-structure) |  -  |  An `aad_admin` block. Conflicts with `customer_managed_key`. | 
| **compute_subnet_id** | string |  -  |  Subnet ID used for computes in workspace Changing this forces a new resource to be created. | 
| **azure_devops_repo** | [block](#azure_devops_repo-block-structure) |  -  |  An `azure_devops_repo` block. | 
| **data_exfiltration_protection_enabled** | bool |  -  |  Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created. | 
| **customer_managed_key** | [block](#customer_managed_key-block-structure) |  -  |  A `customer_managed_key` block. Conflicts with `aad_admin`. | 
| **github_repo** | [block](#github_repo-block-structure) |  -  |  A `github_repo` block. | 
| **linking_allowed_for_aad_tenant_ids** | string |  -  |  Allowed AAD Tenant Ids For Linking. | 
| **managed_resource_group_name** | string |  -  |  Workspace managed resource group. Changing this forces a new resource to be created. | 
| **managed_virtual_network_enabled** | bool |  -  |  Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **purview_id** | string |  -  |  The ID of purview account. | 
| **sql_aad_admin** | [block](#sql_aad_admin-block-structure) |  -  |  An `sql_aad_admin` block. | 
| **sql_identity_control_enabled** | bool |  -  |  Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools? | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Synapse Workspace. | 

### `github_repo` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | Specifies the GitHub account name. |
| `branch_name` | string | Yes | - | Specifies the collaboration branch of the repository to get code from. |
| `last_commit_id` | string | No | - | The last commit ID. |
| `repository_name` | string | Yes | - | Specifies the name of the git repository. |
| `root_folder` | string | Yes | - | Specifies the root folder within the repository. Set to '/' for the top level. |
| `git_url` | string | No | - | Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>. |

### `aad_admin` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `login` | string | Yes | - | The login name of the Azure AD Administrator of this Synapse Workspace. |
| `object_id` | string | Yes | - | The object id of the Azure AD Administrator of this Synapse Workspace. |
| `tenant_id` | string | Yes | - | The tenant id of the Azure AD Administrator of this Synapse Workspace. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be associated with this Synapse Workspace. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Synapse Workspace. |

### `customer_managed_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_versionless_id` | string | Yes | - | The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption (e.g. 'https://example-keyvault.vault.azure.net/type/cmk/'). |
| `key_name` | string | No | - | An identifier for the key. Name needs to match the name of the key used with the 'azurerm_synapse_workspace_key' resource. Defaults to 'cmk' if not specified. |

### `azure_devops_repo` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_name` | string | Yes | - | Specifies the Azure DevOps account name. |
| `branch_name` | string | Yes | - | Specifies the collaboration branch of the repository to get code from. |
| `last_commit_id` | string | No | - | The last commit ID. |
| `project_name` | string | Yes | - | Specifies the name of the Azure DevOps project. |
| `repository_name` | string | Yes | - | Specifies the name of the git repository. |
| `root_folder` | string | Yes | - | Specifies the root folder within the repository. Set to '/' for the top level. |
| `tenant_id` | string | No | - | the ID of the tenant for the Azure DevOps account. |

### `sql_aad_admin` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `login` | string | Yes | - | The login name of the Azure AD Administrator of this Synapse Workspace SQL. |
| `object_id` | string | Yes | - | The object id of the Azure AD Administrator of this Synapse Workspace SQL. |
| `tenant_id` | string | Yes | - | The tenant id of the Azure AD Administrator of this Synapse Workspace SQL. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the synapse Workspace. | 
| **connectivity_endpoints** | list | No  | A list of Connectivity endpoints for this Synapse Workspace. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace. | 

Additionally, all variables are provided as outputs.
