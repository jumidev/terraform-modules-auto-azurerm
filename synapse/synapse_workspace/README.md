# azurerm_synapse_workspace

Manages a Synapse Workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **storage_data_lake_gen2_filesystem_id** | string | True | -  |  -  | Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created. | 
| **sql_administrator_login** | string | False | -  |  -  | Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **sql_administrator_login_password** | string | False | -  |  -  | The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **azuread_authentication_only** | bool | False | `False`  |  -  | Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`. | 
| **aad_admin** | block | False | -  |  -  | An `aad_admin` block. Conflicts with `customer_managed_key`. | 
| **compute_subnet_id** | string | False | -  |  -  | Subnet ID used for computes in workspace Changing this forces a new resource to be created. | 
| **azure_devops_repo** | block | False | -  |  -  | An `azure_devops_repo` block. | 
| **data_exfiltration_protection_enabled** | bool | False | -  |  -  | Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created. | 
| **customer_managed_key** | block | False | -  |  -  | A `customer_managed_key` block. Conflicts with `aad_admin`. | 
| **github_repo** | block | False | -  |  -  | A `github_repo` block. | 
| **linking_allowed_for_aad_tenant_ids** | string | False | -  |  -  | Allowed AAD Tenant Ids For Linking. | 
| **managed_resource_group_name** | string | False | -  |  -  | Workspace managed resource group. Changing this forces a new resource to be created. | 
| **managed_virtual_network_enabled** | bool | False | -  |  -  | Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **purview_id** | string | False | -  |  -  | The ID of purview account. | 
| **sql_aad_admin** | block | False | -  |  -  | An `sql_aad_admin` block. | 
| **sql_identity_control_enabled** | bool | False | -  |  -  | Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools? | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Synapse Workspace. | 

