# azurerm_network_connection_monitor

Manages a Network Connection Monitor.~> **NOTE:** Any Network Connection Monitor resource created with API versions 2019-06-01 or earlier (v1) are now incompatible with Terraform, which now only supports v2.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/network_connection_monitor" 
}

inputs = {
   name = "name of network_connection_monitor" 
   location = "${location}" 
   network_watcher_id = "network_watcher_id of network_connection_monitor" 
   endpoint = "endpoint of network_connection_monitor" 
   test_configuration = "test_configuration of network_connection_monitor" 
   test_group = "test_group of network_connection_monitor" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Connection Monitor. | 

Additionally, all variables are provided as outputs.
