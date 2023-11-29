# azurerm_log_analytics_cluster

~> **Note:** Log Analytics Clusters are subject to 14-day soft delete policy. Clusters created with the same resource group & name as a previously deleted cluster will be recovered rather than creating anew.Manages a Log Analytics Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **identity** | block | True | -  |  -  | An `identity` block. Changing this forces a new Log Analytics Cluster to be created. | 
| **size_gb** | string | False | `1000`  |  `500`, `1000`, `2000`, `5000`  | The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `500`, `1000`, `2000` or `5000`. Defaults to `1000`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Log Analytics Cluster. | 

