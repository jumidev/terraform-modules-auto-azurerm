# azurerm_log_analytics_cluster

~> **Note:** Log Analytics Clusters are subject to 14-day soft delete policy. Clusters created with the same resource group & name as a previously deleted cluster will be recovered rather than creating anew.Manages a Log Analytics Cluster.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.identity** | block | True | -  |  -  |  An `identity` block. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.size_gb** | string | False | `1000`  |  `500`, `1000`, `2000`, `5000`  |  The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `500`, `1000`, `2000` or `5000`. Defaults to `1000`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Log Analytics Cluster. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **size_gb** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Log Analytics Cluster. | 
| **identity** | block  | A `identity` block. | 
| **cluster_id** | string  | The GUID of the cluster. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 
| **type** | string  | The identity type of this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_cluster" 
}

inputs = {
   name = "name of log_analytics_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   identity = "identity of log_analytics_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```