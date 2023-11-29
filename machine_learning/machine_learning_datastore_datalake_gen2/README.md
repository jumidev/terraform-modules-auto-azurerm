# azurerm_machine_learning_datastore_datalake_gen2

Manages a Machine Learning Data Lake Gen2 DataStore.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **storage_container_id** | string | True | -  |  -  | The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the Tenant which the Service Principal belongs to. | 
| **client_id** | string | False | -  |  -  | The object ID of the Service Principal. | 
| **client_secret** | string | False | -  |  -  | The secret of the Service Principal. | 
| **authority_url** | string | False | -  |  -  | An URL used for authentication. | 
| **description** | string | False | -  |  -  | Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **service_data_identity** | string | False | `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  | Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 

