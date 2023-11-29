# azurerm_vmware_cluster

Manages a VMware Cluster.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **var.vmware_cloud_id** | string | True | -  |  -  | The ID of the VMware Private Cloud in which to create this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **var.cluster_node_count** | int | True | -  |  -  | The count of the VMware Cluster nodes. | 
| **var.sku_name** | string | True | -  |  `av20`, `av36`, `av36t`, `av36p`, `av52`  | The cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Cluster to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **vmware_cloud_id** | string  | - | 
| **cluster_node_count** | int  | - | 
| **sku_name** | string  | - | 
| **id** | string  | The ID of the VMware Cluster. | 
| **cluster_number** | string  | A number that identifies this VMware Cluster in its VMware Private Cloud. | 
| **hosts** | list  | A list of host of the VMware Cluster. | 