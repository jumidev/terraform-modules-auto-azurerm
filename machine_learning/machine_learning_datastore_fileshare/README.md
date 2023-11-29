# azurerm_machine_learning_datastore_fileshare

Manages a Machine Learning File Share DataStore.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **storage_fileshare_id** | string | True | -  |  -  | The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created. | 
| **account_key** | string | False | -  |  -  | The access key of the Storage Account. Conflicts with `shared_access_signature`. | 
| **shared_access_signature** | string | False | -  |  -  | The Shared Access Signature of the Storage Account. Conflicts with `account_key`. | 
| **description** | string | False | -  |  -  | Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **service_data_identity** | string | False | `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  | Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 

