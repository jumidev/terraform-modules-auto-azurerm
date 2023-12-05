# azurerm_log_analytics_cluster

~> **Note:** Log Analytics Clusters are subject to 14-day soft delete policy. Clusters created with the same resource group & name as a previously deleted cluster will be recovered rather than creating anew.Manages a Log Analytics Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_cluster"   
}

inputs = {
   name = "name of log_analytics_cluster"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   identity = {
      this_identity = {
         type = "..."         
      }
      
   }
   
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
| **name** | string |  The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **location** | string |  The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. Changing this forces a new Log Analytics Cluster to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **size_gb** | string |  `1000`  |  `500`, `1000`, `2000`, `5000`  |  The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `500`, `1000`, `2000` or `5000`. Defaults to `1000`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Log Analytics Cluster. | 

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
