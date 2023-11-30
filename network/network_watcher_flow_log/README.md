# azurerm_network_watcher_flow_log

Manages a Network Watcher Flow Log.~> **Note** The `azurerm_network_watcher_flow_log` creates a new storage lifecyle management rule that overwrites existing rules. Please make sure to use a `storage_account` with no existing management rules, until the [issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/6935) is fixed.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_watcher_flow_log" 
}

inputs = {
   name = "name of network_watcher_flow_log" 
   network_watcher_name = "network_watcher_name of network_watcher_flow_log" 
   resource_group_name = "${resource_group}" 
   network_security_group_id = "network_security_group_id of network_watcher_flow_log" 
   storage_account_id = "storage_account_id of network_watcher_flow_log" 
   enabled = "enabled of network_watcher_flow_log" 
   retention_policy = {
      example_retention_policy = {
         enabled = "..."   
         days = "..."   
      }
  
   }
 
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
| **var.name** | string | True | -  |  -  |  The name of the Network Watcher Flow Log. Changing this forces a new resource to be created. | 
| **var.network_watcher_name** | string | True | -  |  -  |  The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created. | 
| **var.network_security_group_id** | string | True | -  |  -  |  The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | -  |  -  |  The ID of the Storage Account where flow logs are stored. | 
| **var.enabled** | bool | True | -  |  -  |  Should Network Flow Logging be Enabled? | 
| **var.retention_policy** | block | True | -  |  -  |  A `retention_policy` block. | 
| **var.location** | string | False | `location`  |  -  |  The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher. | 
| **var.traffic_analytics** | block | False | -  |  -  |  A `traffic_analytics` block. | 
| **var.version** | string | False | -  |  `1`, `2`  |  The version (revision) of the flow log. Possible values are `1` and `2`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Network Watcher Flow Log. | 

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Boolean flag to enable/disable retention. |
| `days` | int | Yes | - | The number of days to retain flow log records. |

### `traffic_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Boolean flag to enable/disable traffic analytics. |
| `workspace_id` | string | Yes | - | The resource GUID of the attached workspace. |
| `workspace_region` | string | Yes | - | The location of the attached workspace. |
| `workspace_resource_id` | string | Yes | - | The resource ID of the attached workspace. |
| `interval_in_minutes` | int | No | 60 | How frequently service should do flow analytics in minutes. Defaults to '60'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Watcher. | 

Additionally, all variables are provided as outputs.
