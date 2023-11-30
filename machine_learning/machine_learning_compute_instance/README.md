# azurerm_machine_learning_compute_instance

Manages a Machine Learning Compute Instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_compute_instance" 
}

inputs = {
   name = "name of machine_learning_compute_instance" 
   location = "${location}" 
   machine_learning_workspace_id = "machine_learning_workspace_id of machine_learning_compute_instance" 
   virtual_machine_size = "virtual_machine_size of machine_learning_compute_instance" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Machine Learning Compute Instance should exist. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.machine_learning_workspace_id** | string | True | -  |  -  |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.virtual_machine_size** | string | True | -  |  -  |  The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.authorization_type** | string | False | -  |  `personal`  |  The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.assign_to_user** | block | False | -  |  -  |  A `assign_to_user` block. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.description** | string | False | -  |  -  |  The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.ssh** | block | False | -  |  -  |  A `ssh` block. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.subnet_resource_id** | string | False | -  |  -  |  Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **var.node_public_ip_enabled** | bool | False | `True`  |  -  |  Whether the compute instance will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 

### `assign_to_user` block structure

>`object_id` (string): User’s AAD Object Id.
>`tenant_id` (string): User’s AAD Tenant Id.

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Instance. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
>`identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Instance. Changing this forces a new resource to be created.

### `ssh` block structure

>`public_key` (string): (REQUIRED) Specifies the SSH rsa public key file as a string. Use 'ssh-keygen -t rsa -b 2048' to generate your SSH key pairs.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning Compute Instance. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Compute Instance. | 
| **ssh** | block | No  | An `ssh` block, which specifies policy and settings for SSH access for this Machine Learning Compute Instance. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Instance. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Instance. | 
| **username** | string | No  | The admin username of this Machine Learning Compute Instance. | 
| **port** | string | No  | Describes the port for connecting through SSH. | 

Additionally, all variables are provided as outputs.
