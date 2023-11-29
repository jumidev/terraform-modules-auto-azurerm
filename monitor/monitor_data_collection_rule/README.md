# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **data_flow** | block | True | -  |  -  | One or more `data_flow` blocks. | 
| **destinations** | block | True | -  |  -  | A `destinations` block. | 
| **location** | string | True | -  |  -  | The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **data_collection_endpoint_id** | string | False | -  |  -  | The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **data_sources** | block | False | -  |  -  | A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **description** | string | False | -  |  -  | The description of the Data Collection Rule. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **kind** | string | False | -  |  `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  | The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **stream_declaration** | block | False | -  |  -  | A `stream_declaration` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Data Collection Rule. | 

