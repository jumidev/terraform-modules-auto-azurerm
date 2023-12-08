# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_data_collection_rule"   
}

inputs = {
   data_flow = {
      this_data_flow = {
         destinations = "..."         
         streams = "Possible values: Microsoft-Event | Microsoft-InsightsMetrics | Microsoft-Perf | Microsoft-Syslog | Microsoft-WindowsEvent | Microsoft-PrometheusMetrics"         
      }
      
   }
   
   destinations = {
   }
   
   location = "${location}"   
   name = "The name which should be used for this Data Collection Rule..."   
   resource_group_name = "${resource_group}"   
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
| **data_flow** | [block](#data_flow-block-structure) |  One or more `data_flow` blocks. | 
| **destinations** | [block](#destinations-block-structure) |  A `destinations` block. | 
| **location** | string |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **name** | string |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **data_collection_endpoint_id** | string |  -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **data_sources** | string |  -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **description** | string |  -  |  The description of the Data Collection Rule. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **kind** | string |  `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **stream_declaration** | [block](#stream_declaration-block-structure) |  -  |  A `stream_declaration` block. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 

### `monitor_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `monitor_account_id` | string | Yes | - | The resource ID of the Monitor Account. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `storage_blob` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `storage_table_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `table_name` | string | Yes | - | The Storage Table name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `destinations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_monitor_metrics` | [block](#azure_monitor_metrics-block-structure) | No | - | A 'azure_monitor_metrics' block. |
| `event_hub` | [block](#event_hub-block-structure) | No | - | One or more 'event_hub' blocks. |
| `event_hub_direct` | [block](#event_hub_direct-block-structure) | No | - | One or more 'event_hub' blocks. |
| `log_analytics` | [block](#log_analytics-block-structure) | No | - | One or more 'log_analytics' blocks. |
| `monitor_account` | [block](#monitor_account-block-structure) | No | - | One or more 'monitor_account' blocks. |
| `storage_blob` | [block](#storage_blob-block-structure) | No | - | One or more 'storage_blob' blocks. |
| `storage_blob_direct` | [block](#storage_blob_direct-block-structure) | No | - | One or more 'storage_blob_direct' blocks. |
| `storage_table_direct` | [block](#storage_table_direct-block-structure) | No | - | One or more 'storage_table_direct' blocks. |

### `data_flow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destinations` | string | Yes | - | Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'. |
| `streams` | string | Yes | - | Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'. |
| `built_in_transform` | string | No | - | The built-in transform to transform stream data. |
| `output_stream` | string | No | - | The output stream of the transform. Only required if the data flow changes data to a different stream. |
| `transform_kql` | string | No | - | The KQL query to transform stream data. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported. |

### `event_hub_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `stream_declaration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `stream_name` | string | Yes | - | The name of the custom stream. This name should be unique across all 'stream_declaration' blocks. |
| `column` | list | Yes | - | One or more 'column' blocks. |

### `log_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `workspace_resource_id` | string | Yes | - | The ID of a Log Analytic Workspace resource. |

### `azure_monitor_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `storage_blob_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `event_hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Rule. | 
| **immutable_id** | string | No  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
