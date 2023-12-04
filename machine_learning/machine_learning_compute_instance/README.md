# azurerm_machine_learning_compute_instance

Manages a Machine Learning Compute Instance.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **location** | string |  The Azure Region where the Machine Learning Compute Instance should exist. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **machine_learning_workspace_id** | string |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **virtual_machine_size** | string |  The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **authorization_type** | string |  -  |  `personal`  |  The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **assign_to_user** | [block](#assign_to_user-block-structure) |  -  |  -  |  A `assign_to_user` block. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **description** | string |  -  |  -  |  The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **local_auth_enabled** | bool |  `True`  |  -  |  Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **ssh** | [block](#ssh-block-structure) |  -  |  -  |  A `ssh` block. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **subnet_resource_id** | string |  -  |  -  |  Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **node_public_ip_enabled** | bool |  `True`  |  -  |  Whether the compute instance will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 

### `ssh` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `public_key` | string | Yes | - | Specifies the SSH rsa public key file as a string. Use 'ssh-keygen -t rsa -b 2048' to generate your SSH key pairs. |

### `assign_to_user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `object_id` | string | No | - | User’s AAD Object Id. |
| `tenant_id` | string | No | - | User’s AAD Tenant Id. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Instance. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Instance. Changing this forces a new resource to be created. |



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
