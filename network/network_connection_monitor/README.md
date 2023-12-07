# azurerm_network_connection_monitor

Manages a Network Connection Monitor.~> **NOTE:** Any Network Connection Monitor resource created with API versions 2019-06-01 or earlier (v1) are now incompatible with Terraform, which now only supports v2.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_connection_monitor"   
}

inputs = {
   name = "The name which should be used for this Network Connection Monitor..."   
   location = "${location}"   
   # network_watcher_id → set in tfstate_inputs
   endpoint = {
      name = "..."      
      # target_resource_id → (optional) set in tfstate_inputs
   }
   
   test_configuration = {
      name = "..."      
      protocol = "..."      
   }
   
   test_group = {
      name = "..."      
      destination_endpoints = "..."      
      source_endpoints = "..."      
      test_configuration_names = "..."      
   }
   
}

tfstate_inputs = {
   network_watcher_id = "path/to/network_watcher_component:id"   
   endpoint.target_resource_id = "path/to/any_resource_component:id"   
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
| **name** | string |  The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created. | 
| **network_watcher_id** | string |  The ID of the Network Watcher. Changing this forces a new resource to be created. | 
| **endpoint** | [block](#endpoint-block-structure) |  A `endpoint` block. | 
| **test_configuration** | [block](#test_configuration-block-structure) |  A `test_configuration` block. | 
| **test_group** | [block](#test_group-block-structure) |  A `test_group` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **notes** | string |  The description of the Network Connection Monitor. | 
| **output_workspace_resource_ids** | list |  A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor. | 
| **tags** | map |  A mapping of tags which should be assigned to the Network Connection Monitor. | 

### `tcp_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | The port for the TCP connection. |
| `trace_route_enabled` | bool | No | True | Should path evaluation with trace route be enabled? Defaults to 'true'. |
| `destination_port_behavior` | string | No | - | The destination port behavior for the TCP connection. Possible values are 'None' and 'ListenIfAvailable'. |

### `request_header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the HTTP header. |
| `value` | string | Yes | - | The value of the HTTP header. |

### `item` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | AgentAddress | The type of items included in the filter. Possible values are 'AgentAddress'. Defaults to 'AgentAddress'. |
| `address` | string | No | - | The address of the filter item. |

### `icmp_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `trace_route_enabled` | bool | No | True | Should path evaluation with trace route be enabled? Defaults to 'true'. |

### `success_threshold` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `checks_failed_percent` | string | No | - | The maximum percentage of failed checks permitted for a test to be successful. |
| `round_trip_time_ms` | string | No | - | The maximum round-trip time in milliseconds permitted for a test to be successful. |

### `test_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the test group for the Network Connection Monitor. |
| `destination_endpoints` | list | Yes | - | A list of destination endpoint names. |
| `source_endpoints` | list | Yes | - | A list of source endpoint names. |
| `test_configuration_names` | list | Yes | - | A list of test configuration names. |
| `enabled` | bool | No | True | Should the test group be enabled? Defaults to 'true'. |

### `endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the endpoint for the Network Connection Monitor . |
| `address` | string | No | - | The IP address or domain name of the Network Connection Monitor endpoint. |
| `coverage_level` | string | No | - | The test coverage for the Network Connection Monitor endpoint. Possible values are 'AboveAverage', 'Average', 'BelowAverage', 'Default', 'Full' and 'Low'. |
| `excluded_ip_addresses` | list | No | - | A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint. |
| `included_ip_addresses` | list | No | - | A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint. |
| `target_resource_id` | string | No | - | The resource ID which is used as the endpoint by the Network Connection Monitor. |
| `filter` | [block](#filter-block-structure) | No | - | A 'filter' block. |
| `target_resource_type` | string | No | - | The endpoint type of the Network Connection Monitor. Possible values are 'AzureSubnet', 'AzureVM', 'AzureVNet', 'ExternalAddress', 'MMAWorkspaceMachine' and 'MMAWorkspaceNetwork'. |

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | Include | The behaviour type of this endpoint filter. Currently the only allowed value is 'Include'. Defaults to 'Include'. |
| `item` | [block](#item-block-structure) | No | - | A 'item' block. |

### `test_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of test configuration for the Network Connection Monitor. |
| `protocol` | string | Yes | - | The protocol used to evaluate tests. Possible values are 'Tcp', 'Http' and 'Icmp'. |
| `test_frequency_in_seconds` | int | No | 60 | The time interval in seconds at which the test evaluation will happen. Defaults to '60'. |
| `http_configuration` | [block](#http_configuration-block-structure) | No | - | A 'http_configuration' block. |
| `icmp_configuration` | [block](#icmp_configuration-block-structure) | No | - | A 'icmp_configuration' block. |
| `preferred_ip_version` | string | No | - | The preferred IP version which is used in the test evaluation. Possible values are 'IPv4' and 'IPv6'. |
| `success_threshold` | [block](#success_threshold-block-structure) | No | - | A 'success_threshold' block. |
| `tcp_configuration` | [block](#tcp_configuration-block-structure) | No | - | A 'tcp_configuration' block. |

### `http_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `method` | string | No | Get | The HTTP method for the HTTP request. Possible values are 'Get' and 'Post'. Defaults to 'Get'. |
| `port` | string | No | - | The port for the HTTP connection. |
| `path` | string | No | - | The path component of the URI. It only accepts the absolute path. |
| `prefer_https` | bool | No | False | Should HTTPS be preferred over HTTP in cases where the choice is not explicit? Defaults to 'false'. |
| `request_header` | [block](#request_header-block-structure) | No | - | A 'request_header' block. |
| `valid_status_code_ranges` | string | No | - | The HTTP status codes to consider successful. For instance, '2xx', '301-304' and '418'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Connection Monitor. | 

Additionally, all variables are provided as outputs.
