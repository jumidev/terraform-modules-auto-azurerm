# azurerm_network_watcher_flow_log

Manages a Network Watcher Flow Log.~> **Note** The `azurerm_network_watcher_flow_log` creates a new storage lifecyle management rule that overwrites existing rules. Please make sure to use a `storage_account` with no existing management rules, until the [issue](https://github.com/hashicorp/terraform-provider-azurerm/issues/6935) is fixed.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Network Watcher Flow Log. Changing this forces a new resource to be created. | 
| **network_watcher_name** | string | True | -  |  -  | The name of the Network Watcher. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created. | 
| **network_security_group_id** | string | True | -  |  -  | The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the Storage Account where flow logs are stored. | 
| **enabled** | bool | True | -  |  -  | Should Network Flow Logging be Enabled? | 
| **retention_policy** | block | True | -  |  -  | A `retention_policy` block. | 
| **location** | string | False | `location`  |  -  | The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher. | 
| **traffic_analytics** | block | False | -  |  -  | A `traffic_analytics` block. | 
| **version** | string | False | -  |  `1`, `2`  | The version (revision) of the flow log. Possible values are `1` and `2`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Network Watcher Flow Log. | 

