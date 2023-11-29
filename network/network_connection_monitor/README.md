# azurerm_network_connection_monitor

Manages a Network Connection Monitor.~> **NOTE:** Any Network Connection Monitor resource created with API versions 2019-06-01 or earlier (v1) are now incompatible with Terraform, which now only supports v2.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created. | 
| **network_watcher_id** | string | True | -  |  -  | The ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **endpoint** | block | True | -  |  -  | A `endpoint` block. | 
| **test_configuration** | block | True | -  |  -  | A `test_configuration` block. | 
| **test_group** | block | True | -  |  -  | A `test_group` block. | 
| **notes** | string | False | -  |  -  | The description of the Network Connection Monitor. | 
| **output_workspace_resource_ids** | list | False | -  |  -  | A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Network Connection Monitor. | 

