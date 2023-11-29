# azurerm_network_connection_monitor

Manages a Network Connection Monitor.~> **NOTE:** Any Network Connection Monitor resource created with API versions 2019-06-01 or earlier (v1) are now incompatible with Terraform, which now only supports v2.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created. | 
| **var.network_watcher_id** | string | True | The ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **var.endpoint** | block | True | A `endpoint` block. | 
| **var.test_configuration** | block | True | A `test_configuration` block. | 
| **var.test_group** | block | True | A `test_group` block. | 
| **var.notes** | string | False | The description of the Network Connection Monitor. | 
| **var.output_workspace_resource_ids** | list | False | A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Network Connection Monitor. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **network_watcher_id** | string  | - | 
| **endpoint** | block  | - | 
| **test_configuration** | block  | - | 
| **test_group** | block  | - | 
| **notes** | string  | - | 
| **output_workspace_resource_ids** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Network Connection Monitor. | 