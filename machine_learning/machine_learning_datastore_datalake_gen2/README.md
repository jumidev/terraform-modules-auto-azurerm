# azurerm_machine_learning_datastore_datalake_gen2

Manages a Machine Learning Data Lake Gen2 DataStore.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_datastore_datalake_gen2" 
}

inputs = {
   name = "name of machine_learning_datastore_datalake_gen2" 
   # workspace_id → set in tfstate_inputs
   # storage_container_id → set in tfstate_inputs
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id" 
   storage_container_id = "path/to/storage_container_component:id" 
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
| **name** | string |  The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **workspace_id** | string |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **storage_container_id** | string |  The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **tenant_id** | string |  -  |  -  |  The ID of the Tenant which the Service Principal belongs to. | 
| **client_id** | string |  -  |  -  |  The object ID of the Service Principal. | 
| **client_secret** | string |  -  |  -  |  The secret of the Service Principal. | 
| **authority_url** | string |  -  |  -  |  An URL used for authentication. | 
| **description** | string |  -  |  -  |  Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **service_data_identity** | string |  `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  |  Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning DataStore. | 
| **is_default** | string | No  | Indicates whether this Machines Learning DataStore is the default for the Workspace. | 

Additionally, all variables are provided as outputs.
