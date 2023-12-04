# azurerm_machine_learning_workspace

Manages a Azure Machine Learning Workspace~> **NOTE:** For examples on how to set up the Azure Machine Learning workspace, together with compute and integrated services, see [Terraform Quickstart](https://github.com/Azure/terraform/tree/master/quickstart)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_workspace" 
}

inputs = {
   name = "name of machine_learning_workspace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   # application_insights_id → set in tfstate_inputs
   # key_vault_id → set in tfstate_inputs
   # storage_account_id → set in tfstate_inputs
   identity = {
      example_identity = {
         type = "..."   
      }
  
   }
 
}

tfstate_inputs = {
   application_insights_id = "path/to/application_insights_component:id" 
   key_vault_id = "path/to/key_vault_component:id" 
   storage_account_id = "path/to/storage_account_component:id" 
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
| **name** | string |  Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **application_insights_id** | string |  The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **key_vault_id** | string |  The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **container_registry_id** | string |  -  |  -  |  The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **public_access_behind_virtual_network_enabled** | bool |  -  |  -  |  Enable public access when this Machine Learning Workspace is behind a VNet. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  -  |  -  |  Enable public access when this Machine Learning Workspace is behind VNet. | 
| **image_build_compute_name** | string |  -  |  -  |  The compute name for image build of the Machine Learning Workspace. | 
| **description** | string |  -  |  -  |  The description of this Machine Learning Workspace. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  -  |  An `encryption` block. Changing this forces a new resource to be created. | 
| **friendly_name** | string |  -  |  -  |  Display name for this Machine Learning Workspace. | 
| **high_business_impact** | string |  -  |  -  |  Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service | 
| **primary_user_assigned_identity** | string |  -  |  -  |  The user assigned identity id that represents the workspace identity. | 
| **v1_legacy_mode_enabled** | bool |  `False`  |  -  |  Enable V1 API features, enabling `v1_legacy_mode` may prevent you from using features provided by the v2 API. Defaults to `false`. | 
| **sku_name** | string |  `Basic`  |  `Basic`  |  SKU/edition of the Machine Learning Workspace, possible values are `Basic`. Defaults to `Basic`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_id` | string | Yes | - | The ID of the keyVault where the customer owned encryption key is present. |
| `key_id` | string | Yes | - | The Key Vault URI to access the encryption key. |
| `user_assigned_identity_id` | string | No | - | The Key Vault URI to access the encryption key. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Machine Learning Workspace. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Workspace. |



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
