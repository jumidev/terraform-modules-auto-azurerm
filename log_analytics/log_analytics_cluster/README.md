# azurerm_log_analytics_cluster

~> **Note:** Log Analytics Clusters are subject to 14-day soft delete policy. Clusters created with the same resource group & name as a previously deleted cluster will be recovered rather than creating anew.Manages a Log Analytics Cluster.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.identity** | block | True | -  |  -  |  An `identity` block. Changing this forces a new Log Analytics Cluster to be created. | 
| **var.size_gb** | string | False | `1000`  |  `500`, `1000`, `2000`, `5000`  |  The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `500`, `1000`, `2000` or `5000`. Defaults to `1000`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Log Analytics Cluster. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Cluster. | 
| **identity** | block | No  | A `identity` block. | 
| **cluster_id** | string | No  | The GUID of the cluster. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **type** | string | No  | The identity type of this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
