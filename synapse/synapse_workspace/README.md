# azurerm_synapse_workspace

Manages a Synapse Workspace.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.storage_data_lake_gen2_filesystem_id** | string | True | -  |  Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created. | 
| **var.sql_administrator_login** | string | False | -  |  Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **var.sql_administrator_login_password** | string | False | -  |  The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `aad_admin` or `customer_managed_key` must be provided. | 
| **var.azuread_authentication_only** | bool | False | `False`  |  Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`. | 
| **var.aad_admin** | block | False | -  |  An `aad_admin` block. Conflicts with `customer_managed_key`. | 
| **var.compute_subnet_id** | string | False | -  |  Subnet ID used for computes in workspace Changing this forces a new resource to be created. | 
| **var.azure_devops_repo** | block | False | -  |  An `azure_devops_repo` block. | 
| **var.data_exfiltration_protection_enabled** | bool | False | -  |  Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created. | 
| **var.customer_managed_key** | block | False | -  |  A `customer_managed_key` block. Conflicts with `aad_admin`. | 
| **var.github_repo** | block | False | -  |  A `github_repo` block. | 
| **var.linking_allowed_for_aad_tenant_ids** | string | False | -  |  Allowed AAD Tenant Ids For Linking. | 
| **var.managed_resource_group_name** | string | False | -  |  Workspace managed resource group. Changing this forces a new resource to be created. | 
| **var.managed_virtual_network_enabled** | bool | False | -  |  Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether public network access is allowed for the Cognitive Account. Defaults to `true`. | 
| **var.purview_id** | string | False | -  |  The ID of purview account. | 
| **var.sql_aad_admin** | block | False | -  |  An `sql_aad_admin` block. | 
| **var.sql_identity_control_enabled** | bool | False | -  |  Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools? | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Synapse Workspace. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **storage_data_lake_gen2_filesystem_id** | string  | - | 
| **sql_administrator_login** | string  | - | 
| **sql_administrator_login_password** | string  | - | 
| **azuread_authentication_only** | bool  | - | 
| **aad_admin** | block  | - | 
| **compute_subnet_id** | string  | - | 
| **azure_devops_repo** | block  | - | 
| **data_exfiltration_protection_enabled** | bool  | - | 
| **customer_managed_key** | block  | - | 
| **github_repo** | block  | - | 
| **linking_allowed_for_aad_tenant_ids** | string  | - | 
| **managed_resource_group_name** | string  | - | 
| **managed_virtual_network_enabled** | bool  | - | 
| **public_network_access_enabled** | bool  | - | 
| **purview_id** | string  | - | 
| **sql_aad_admin** | block  | - | 
| **sql_identity_control_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the synapse Workspace. | 
| **connectivity_endpoints** | list  | A list of Connectivity endpoints for this Synapse Workspace. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace. | 