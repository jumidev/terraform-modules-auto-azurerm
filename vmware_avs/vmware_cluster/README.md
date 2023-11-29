# azurerm_vmware_cluster

Manages a VMware Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **vmware_cloud_id** | string | True | -  |  -  | The ID of the VMware Private Cloud in which to create this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **cluster_node_count** | int | True | -  |  -  | The count of the VMware Cluster nodes. | 
| **sku_name** | string | True | -  |  `av20`, `av36`, `av36t`, `av36p`, `av52`  | The cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Cluster to be created. | 

