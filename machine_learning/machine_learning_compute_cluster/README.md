# azurerm_machine_learning_compute_cluster

Manages a Machine Learning Compute Cluster.**NOTE:** At this point in time the resource cannot be updated (not supported by the backend Azure Go SDK). Therefore it can only be created and deleted, not updated. At the moment, there is also no possibility to specify ssh User Account Credentials to ssh into the compute cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **vm_priority** | string | True | -  |  -  | The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`. | 
| **vm_size** | string | True | -  |  -  | The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **scale_settings** | block | True | -  |  -  | A `scale_settings` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **ssh** | block | False | -  |  -  | Credentials for an administrator user account that will be created on each compute node. A `ssh` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **description** | string | False | -  |  -  | The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **node_public_ip_enabled** | bool | False | `True`  |  -  | Whether the compute cluster will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **ssh_public_access_enabled** | bool | False | -  |  -  | A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **subnet_resource_id** | string | False | -  |  -  | The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 

