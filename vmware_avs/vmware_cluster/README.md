# azurerm_vmware_cluster

Manages a VMware Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "vmware_avs/vmware_cluster"   
}

inputs = {
   name = "The name which should be used for this VMware Cluster..."   
   vmware_cloud_id = "The ID of the VMware Private Cloud in which to create this VMware Cluster..."   
   cluster_node_count = "The count of the VMware Cluster nodes"   
   sku_name = "The cluster SKU to use"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `vmware_netapp_volume_attachment` 

If set, makes a **azurerm_vmware_netapp_volume_attachment** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `netapp_volume_id` | string | True | null |


Example component snippet:

```hcl
inputs = {
   vmware_netapp_volume_attachment = {
      name = "..."      
   }
   
}

tfstate_inputs = {
   vmware_netapp_volume_attachment.netapp_volume_id = "path/to/netapp_volume_component:id"   
}

```


## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **vmware_cloud_id** | string |  -  |  The ID of the VMware Private Cloud in which to create this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **cluster_node_count** | number |  -  |  The count of the VMware Cluster nodes. | 
| **sku_name** | string |  `av20`, `av36`, `av36t`, `av36p`, `av52`  |  The cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Cluster to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VMware Cluster. | 
| **cluster_number** | string | No  | A number that identifies this VMware Cluster in its VMware Private Cloud. | 
| **hosts** | list | No  | A list of host of the VMware Cluster. | 

Additionally, all variables are provided as outputs.
