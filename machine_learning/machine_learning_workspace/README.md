# azurerm_machine_learning_workspace

Manages a Azure Machine Learning Workspace~> **NOTE:** For examples on how to set up the Azure Machine Learning workspace, together with compute and integrated services, see [Terraform Quickstart](https://github.com/Azure/terraform/tree/master/quickstart)

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_workspace" 
}

inputs = {
   name = "name of machine_learning_workspace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   application_insights_id = "application_insights_id of machine_learning_workspace" 
   key_vault_id = "key_vault_id of machine_learning_workspace" 
   storage_account_id = "storage_account_id of machine_learning_workspace" 
   identity = "identity of machine_learning_workspace" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **var.application_insights_id** | string | True | -  |  -  |  The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **var.key_vault_id** | string | True | -  |  -  |  The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | -  |  -  |  The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **var.identity** | block | True | -  |  -  |  An `identity` block. | 
| **var.container_registry_id** | string | False | -  |  -  |  The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **var.public_access_behind_virtual_network_enabled** | bool | False | -  |  -  |  Enable public access when this Machine Learning Workspace is behind a VNet. Changing this forces a new resource to be created. | 
| **var.public_network_access_enabled** | bool | False | -  |  -  |  Enable public access when this Machine Learning Workspace is behind VNet. | 
| **var.image_build_compute_name** | string | False | -  |  -  |  The compute name for image build of the Machine Learning Workspace. | 
| **var.description** | string | False | -  |  -  |  The description of this Machine Learning Workspace. | 
| **var.encryption** | block | False | -  |  -  |  An `encryption` block. Changing this forces a new resource to be created. | 
| **var.friendly_name** | string | False | -  |  -  |  Display name for this Machine Learning Workspace. | 
| **var.high_business_impact** | string | False | -  |  -  |  Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service | 
| **var.primary_user_assigned_identity** | string | False | -  |  -  |  The user assigned identity id that represents the workspace identity. | 
| **var.v1_legacy_mode_enabled** | bool | False | `False`  |  -  |  Enable V1 API features, enabling `v1_legacy_mode` may prevent you from using features provided by the v2 API. Defaults to `false`. | 
| **var.sku_name** | string | False | `Basic`  |  `Basic`  |  SKU/edition of the Machine Learning Workspace, possible values are `Basic`. Defaults to `Basic`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Workspace. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
>`identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Workspace.

### `encryption` block structure

>`key_vault_id` (string): (REQUIRED) The ID of the keyVault where the customer owned encryption key is present.
>`key_id` (string): (REQUIRED) The Key Vault URI to access the encryption key.
>`user_assigned_identity_id` (string): The Key Vault URI to access the encryption key.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning Workspace. | 
| **discovery_url** | string | No  | The url for the discovery service to identify regional endpoints for machine learning experimentation services. | 
| **workspace_id** | string | No  | The immutable id associated with this workspace. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **create** | string | No  | (Defaults to 30 minutes) Used when creating the Machine Learning Workspace. | 
| **update** | datetime | No  | (Defaults to 30 minutes) Used when updating the Machine Learning Workspace. | 
| **read** | string | No  | (Defaults to 5 minutes) Used when retrieving the Machine Learning Workspace. | 
| **delete** | string | No  | (Defaults to 30 minutes) Used when deleting the Machine Learning Workspace. | 

Additionally, all variables are provided as outputs.
