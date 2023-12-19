# azurerm_network_watcher_flow_log

Manages a Network Watcher Flow Log.~> **Note** The `azurerm_network_watcher_flow_log` creates a new storage lifecyle management rule that overwrites existing rules. Please make sure to use a `storage_account` with no existing management rules, until the [issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/6935) is fixed.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_watcher_flow_log"   
}

inputs = {
   name = "The name of the Network Watcher Flow Log"   
   # network_watcher_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   # network_security_group_id → set in component_inputs
   # storage_account_id → set in component_inputs
   enabled = "Should Network Flow Logging be Enabled?"   
   retention_policy = {
      enabled = "..."      
      days = "..."      
   }
   
}

component_inputs = {
   network_watcher_name = "path/to/network_watcher_component:name"   
   network_security_group_id = "path/to/network_security_group_component:id"   
   storage_account_id = "path/to/storage_account_component:id"   
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
| **name** | string |  The name of the Network Watcher Flow Log. Changing this forces a new resource to be created. | 
| **network_watcher_name** | string |  The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created. | 
| **network_security_group_id** | string |  The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account where flow logs are stored. | 
| **enabled** | bool |  Should Network Flow Logging be Enabled? | 
| **retention_policy** | [block](#retention_policy-block-structure) |  A `retention_policy` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **location** | string |  `location`  |  -  |  The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher. | 
| **traffic_analytics** | [block](#traffic_analytics-block-structure) |  -  |  -  |  A `traffic_analytics` block. | 
| **version** | string |  -  |  `1`, `2`  |  The version (revision) of the flow log. Possible values are `1` and `2`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Network Watcher Flow Log. | 

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Boolean flag to enable/disable retention. |
| `days` | number | Yes | - | The number of days to retain flow log records. |

### `traffic_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Boolean flag to enable/disable traffic analytics. |
| `workspace_id` | string | Yes | - | The resource GUID of the attached workspace. |
| `workspace_region` | string | Yes | - | The location of the attached workspace. |
| `workspace_resource_id` | string | Yes | - | The resource ID of the attached workspace. |
| `interval_in_minutes` | number | No | 60 | How frequently service should do flow analytics in minutes. Defaults to '60'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Watcher. | 

Additionally, all variables are provided as outputs.
