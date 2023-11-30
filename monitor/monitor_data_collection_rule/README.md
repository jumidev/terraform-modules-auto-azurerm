# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.data_flow** | block | True | -  |  One or more `data_flow` blocks. | 
| **var.destinations** | block | True | -  |  A `destinations` block. | 
| **var.location** | string | True | -  |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.data_collection_endpoint_id** | string | False | -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **var.data_sources** | block | False | -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **var.description** | string | False | -  |  The description of the Data Collection Rule. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.kind** | string | False | `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **var.stream_declaration** | block | False | -  |  A `stream_declaration` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **data_flow** | block  | - | 
| **destinations** | block  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **data_collection_endpoint_id** | string  | - | 
| **data_sources** | block  | - | 
| **description** | string  | - | 
| **identity** | block  | - | 
| **kind** | string  | - | 
| **stream_declaration** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Data Collection Rule. | 
| **immutable_id** | string  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_data_collection_rule" 
}

inputs = {
   data_flow = "data_flow of monitor_data_collection_rule" 
   destinations = "destinations of monitor_data_collection_rule" 
   location = "${location}" 
   name = "name of monitor_data_collection_rule" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```