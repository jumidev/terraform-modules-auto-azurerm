# azurerm_machine_learning_compute_cluster

Manages a Machine Learning Compute Cluster.**NOTE:** At this point in time the resource cannot be updated (not supported by the backend Azure Go SDK). Therefore it can only be created and deleted, not updated. At the moment, there is also no possibility to specify ssh User Account Credentials to ssh into the compute cluster.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.vm_priority** | string | True | -  |  -  | The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`. | 
| **var.vm_size** | string | True | -  |  -  | The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.scale_settings** | block | True | -  |  -  | A `scale_settings` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.ssh** | block | False | -  |  -  | Credentials for an administrator user account that will be created on each compute node. A `ssh` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.description** | string | False | -  |  -  | The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  | Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.node_public_ip_enabled** | bool | False | `True`  |  -  | Whether the compute cluster will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.ssh_public_access_enabled** | bool | False | -  |  -  | A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.subnet_resource_id** | string | False | -  |  -  | The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **machine_learning_workspace_id** | string  | - | 
| **location** | string  | - | 
| **vm_priority** | string  | - | 
| **vm_size** | string  | - | 
| **scale_settings** | block  | - | 
| **ssh** | block  | - | 
| **description** | string  | - | 
| **identity** | block  | - | 
| **local_auth_enabled** | bool  | - | 
| **node_public_ip_enabled** | bool  | - | 
| **ssh_public_access_enabled** | bool  | - | 
| **subnet_resource_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Machine Learning Compute Cluster. | 
| **identity** | block  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Compute Cluster. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster. | 