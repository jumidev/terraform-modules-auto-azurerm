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
   endpoint = {
      example_endpoint = {
         ...
      }
  
   }
 
   test_configuration = {
      example_test_configuration = {
         ...
      }
  
   }
 
   test_group = {
      example_test_group = {
         ...
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

### `endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `address` | string | No | - | The IP address or domain name of the Network Connection Monitor endpoint. |
| `coverage_level` | string | No | - | The test coverage for the Network Connection Monitor endpoint. Possible values are 'AboveAverage', 'Average', 'BelowAverage', 'Default', 'Full' and 'Low'. |
| `excluded_ip_addresses` | list | No | - | A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint. |
| `included_ip_addresses` | list | No | - | A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint. |
| `target_resource_id` | string | No | - | The resource ID which is used as the endpoint by the Network Connection Monitor. |
| `filter` | block | No | - | A 'filter' block. |
| `target_resource_type` | string | No | - | The endpoint type of the Network Connection Monitor. Possible values are 'AzureSubnet', 'AzureVM', 'AzureVNet', 'ExternalAddress', 'MMAWorkspaceMachine' and 'MMAWorkspaceNetwork'. |

### `test_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `protocol` | string | Yes | - | The protocol used to evaluate tests. Possible values are 'Tcp', 'Http' and 'Icmp'. |
| `test_frequency_in_seconds` | int | No | 60 | The time interval in seconds at which the test evaluation will happen. Defaults to '60'. |
| `http_configuration` | block | No | - | A 'http_configuration' block. |
| `icmp_configuration` | block | No | - | A 'icmp_configuration' block. |
| `preferred_ip_version` | string | No | - | The preferred IP version which is used in the test evaluation. Possible values are 'IPv4' and 'IPv6'. |
| `success_threshold` | block | No | - | A 'success_threshold' block. |
| `tcp_configuration` | block | No | - | A 'tcp_configuration' block. |

### `test_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destination_endpoints` | list | Yes | - | A list of destination endpoint names. |
| `source_endpoints` | list | Yes | - | A list of source endpoint names. |
| `test_configuration_names` | list | Yes | - | A list of test configuration names. |
| `enabled` | bool | No | True | Should the test group be enabled? Defaults to 'true'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Connection Monitor. | 

Additionally, all variables are provided as outputs.
