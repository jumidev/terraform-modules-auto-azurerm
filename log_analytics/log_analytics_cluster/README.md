# azurerm_log_analytics_cluster



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_cluster"   
}
inputs = {
   name = "The name which should be used for this Log Analytics Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   identity = {
      type = "..."      
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
| **size_gb** | number |  `1000`  |  `1000`, `500`  |  The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `500`, `1000`, `2000` or `5000`. Defaults to `1000`. ~> **NOTE:** The cluster capacity must start at 500 GB and can be set to 1000, 2000 or 5000 GB/day. For more information on cluster costs, see [Dedicated clusters](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#dedicated-clusters). In v3.x the default value is `1000` GB, in v4.0 of the provider this will default to `500` GB. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Log Analytics Cluster. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. Possible values are 'SystemAssigned' and  'UserAssigned'. Changing this forces a new resource to be created. ~> **NOTE:** The assigned 'principal_id' and 'tenant_id' can be retrieved after the identity 'type' has been set to 'SystemAssigned' and the Log Analytics Cluster has been created. More details are available below. |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot. ~> **NOTE:** This is required when `type` is set to `UserAssigned`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Log Analytics Cluster. | 
| **identity** | block | No  | A `identity` block. | 
| **cluster_id** | string | No  | The GUID of the cluster. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **type** | string | No  | The identity type of this Managed Service Identity. -> You can access the Principal ID via `azurerm_log_analytics_cluster.example.identity[0].principal_id` and the Tenant ID via `azurerm_log_analytics_cluster.example.identity[0].tenant_id` | 

Additionally, all variables are provided as outputs.
