# azurerm_machine_learning_datastore_fileshare

Manages a Machine Learning File Share DataStore.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_datastore_fileshare" 
}

inputs = {
   name = "name of machine_learning_datastore_fileshare" 
   workspace_id = "workspace_id of machine_learning_datastore_fileshare" 
   storage_fileshare_id = "storage_fileshare_id of machine_learning_datastore_fileshare" 
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
| **var.name** | string |  The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.workspace_id** | string |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.storage_fileshare_id** | string |  The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.account_key** | string |  -  |  -  |  The access key of the Storage Account. Conflicts with `shared_access_signature`. | 
| **var.shared_access_signature** | string |  -  |  -  |  The Shared Access Signature of the Storage Account. Conflicts with `account_key`. | 
| **var.description** | string |  -  |  -  |  Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.service_data_identity** | string |  `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  |  Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning DataStore. | 
| **is_default** | string | No  | Indicate whether this Machines Learning DataStore is the default for the Workspace. | 

Additionally, all variables are provided as outputs.
