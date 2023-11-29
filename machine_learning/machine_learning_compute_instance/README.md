# azurerm_machine_learning_compute_instance

Manages a Machine Learning Compute Instance.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Machine Learning Compute Instance should exist. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **virtual_machine_size** | string | True | -  |  -  | The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **authorization_type** | string | False | -  |  `personal`  | The Compute Instance Authorization type. Possible values include: `personal`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **assign_to_user** | block | False | -  |  -  | A `assign_to_user` block. A user explicitly assigned to a personal compute instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **description** | string | False | -  |  -  | The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **ssh** | block | False | -  |  -  | A `ssh` block. Specifies policy and settings for SSH access. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **subnet_resource_id** | string | False | -  |  -  | Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created. | 
| **node_public_ip_enabled** | bool | False | `True`  |  -  | Whether the compute instance will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created. | 

