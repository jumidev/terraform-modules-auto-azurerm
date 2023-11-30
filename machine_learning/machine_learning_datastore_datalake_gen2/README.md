# azurerm_machine_learning_datastore_datalake_gen2

Manages a Machine Learning Data Lake Gen2 DataStore.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_datastore_datalake_gen2" 
}

inputs = {
   name = "name of machine_learning_datastore_datalake_gen2" 
   workspace_id = "workspace_id of machine_learning_datastore_datalake_gen2" 
   storage_container_id = "storage_container_id of machine_learning_datastore_datalake_gen2" 
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
| **var.name** | string | True | -  |  -  |  The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.workspace_id** | string | True | -  |  -  |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.storage_container_id** | string | True | -  |  -  |  The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.tenant_id** | string | False | -  |  -  |  The ID of the Tenant which the Service Principal belongs to. | 
| **var.client_id** | string | False | -  |  -  |  The object ID of the Service Principal. | 
| **var.client_secret** | string | False | -  |  -  |  The secret of the Service Principal. | 
| **var.authority_url** | string | False | -  |  -  |  An URL used for authentication. | 
| **var.description** | string | False | -  |  -  |  Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created. | 
| **var.service_data_identity** | string | False | `None`  |  `None`, `WorkspaceSystemAssignedIdentity`, `WorkspaceUserAssignedIdentity`  |  Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning DataStore. | 
| **is_default** | string | No  | Indicates whether this Machines Learning DataStore is the default for the Workspace. | 

Additionally, all variables are provided as outputs.
