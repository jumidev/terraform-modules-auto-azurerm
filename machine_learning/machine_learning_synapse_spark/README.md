# azurerm_machine_learning_synapse_spark

Manages the linked service to link an Azure Machine learning workspace to an Azure Synapse workspace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "machine_learning/machine_learning_synapse_spark"   
}

inputs = {
   name = "The name which should be used for this Machine Learning Synapse Spark..."   
   # machine_learning_workspace_id → set in component_inputs
   location = "${location}"   
   # synapse_spark_pool_id → set in component_inputs
}

component_inputs = {
   machine_learning_workspace_id = "path/to/machine_learning_workspace_component:id"   
   synapse_spark_pool_id = "path/to/synapse_spark_pool_component:id"   
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
| **name** | string |  The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **machine_learning_workspace_id** | string |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **location** | string |  The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **synapse_spark_pool_id** | string |  The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **local_auth_enabled** | bool |  `True`  |  Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Machine Learning Synapse Spark. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Synapse Spark. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning Synapse Spark. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Synapse Spark. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Synapse Spark. | 

Additionally, all variables are provided as outputs.
