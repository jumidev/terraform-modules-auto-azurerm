# azurerm_vmware_cluster

Manages a VMware Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "vmware_avs/vmware_cluster" 
}

inputs = {
   name = "name of vmware_cluster" 
   vmware_cloud_id = "vmware_cloud_id of vmware_cluster" 
   cluster_node_count = "cluster_node_count of vmware_cluster" 
   sku_name = "sku_name of vmware_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **var.vmware_cloud_id** | string | True | -  |  The ID of the VMware Private Cloud in which to create this VMware Cluster. Changing this forces a new VMware Cluster to be created. | 
| **var.cluster_node_count** | int | True | -  |  The count of the VMware Cluster nodes. | 
| **var.sku_name** | string | True | `av20`, `av36`, `av36t`, `av36p`, `av52`  |  The cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Cluster to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VMware Cluster. | 
| **cluster_number** | string | No  | A number that identifies this VMware Cluster in its VMware Private Cloud. | 
| **hosts** | list | No  | A list of host of the VMware Cluster. | 

Additionally, all variables are provided as outputs.
