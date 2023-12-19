# azurerm_machine_learning_compute_cluster

Manages a Machine Learning Compute Cluster.**NOTE:** At this point in time the resource cannot be updated (not supported by the backend Azure Go SDK). Therefore it can only be created and deleted, not updated. At the moment, there is also no possibility to specify ssh User Account Credentials to ssh into the compute cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "machine_learning/machine_learning_compute_cluster"   
}

inputs = {
   name = "The name which should be used for this Machine Learning Compute Cluster..."   
   # machine_learning_workspace_id → set in component_inputs
   location = "${location}"   
   vm_priority = "The priority of the VM"   
   vm_size = "The size of the VM"   
   scale_settings = {
      max_node_count = "..."      
      min_node_count = "..."      
      scale_down_nodes_after_idle_duration = "..."      
   }
   
}

component_inputs = {
   machine_learning_workspace_id = "path/to/machine_learning_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **machine_learning_workspace_id** | string |  The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **location** | string |  The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **vm_priority** | string |  The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`. | 
| **vm_size** | string |  The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **scale_settings** | [block](#scale_settings-block-structure) |  A `scale_settings` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ssh** | [block](#ssh-block-structure) |  -  |  Credentials for an administrator user account that will be created on each compute node. A `ssh` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **description** | string |  -  |  The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **local_auth_enabled** | bool |  `True`  |  Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **node_public_ip_enabled** | bool |  `True`  |  Whether the compute cluster will have a public ip. To set this to false a `subnet_resource_id` needs to be set. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **ssh_public_access_enabled** | bool |  -  |  A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **subnet_resource_id** | string |  -  |  The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created. | 

### `scale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_node_count` | number | Yes | - | Maximum node count. Changing this forces a new Machine Learning Compute Cluster to be created. |
| `min_node_count` | number | Yes | - | Minimal node count. Changing this forces a new Machine Learning Compute Cluster to be created. |
| `scale_down_nodes_after_idle_duration` | string | Yes | - | Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration. Changing this forces a new Machine Learning Compute Cluster to be created. |

### `ssh` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `admin_username` | string | Yes | - | Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created. |
| `admin_password` | string | No | - | Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created. |
| `key_value` | string | No | - | SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning Compute Cluster. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Compute Cluster. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster. | 

Additionally, all variables are provided as outputs.
