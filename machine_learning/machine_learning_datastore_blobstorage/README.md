# azurerm_machine_learning_datastore_blobstorage

Manages a Machine Learning Blob Storage DataStore.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.workspace_id** | string | True | -  |  -  |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.storage_container_id** | string | True | -  |  -  |  The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.account_key** | string | False | -  |  -  |  The access key of the Storage Account. Conflicts with `shared_access_signature`. | 
| **var.shared_access_signature** | string | False | -  |  -  |  The Shared Access Signature of the Storage Account. Conflicts with `account_key`. | 
| **var.description** | string | False | -  |  -  |  Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.is_default** | bool | False | `False`  |  -  |  Specifies whether this Machines Learning DataStore is the default for the Workspace. Defaults to `false`. | 
| **var.service_data_auth_identity** | string | False | `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  |  Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **workspace_id** | string  | - | 
| **storage_container_id** | string  | - | 
| **account_key** | string  | - | 
| **shared_access_signature** | string  | - | 
| **description** | string  | - | 
| **is_default** | bool  | - | 
| **service_data_auth_identity** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Machine Learning DataStore. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_datastore_blobstorage" 
}

inputs = {
   name = "name of machine_learning_datastore_blobstorage" 
   workspace_id = "workspace_id of machine_learning_datastore_blobstorage" 
   storage_container_id = "storage_container_id of machine_learning_datastore_blobstorage" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```