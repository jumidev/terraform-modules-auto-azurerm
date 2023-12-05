# azurerm_iot_security_solution

Manages an iot security solution.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "security_center/iot_security_solution"   
}

inputs = {
   name = "name of iot_security_solution"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   display_name = "display_name of iot_security_solution"   
   # iothub_ids → set in tfstate_inputs
}

tfstate_inputs = {
   iothub_ids = "path/to/iothub_component:id"   
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
| **name** | string |  Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **display_name** | string |  Specifies the Display Name for this Iot Security Solution. | 
| **iothub_ids** | string |  Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **additional_workspace** | [block](#additional_workspace-block-structure) |  -  |  -  |  A `additional_workspace` block. | 
| **disabled_data_sources** | bool |  -  |  -  |  A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`. | 
| **enabled** | bool |  `True`  |  -  |  Is the Iot Security Solution enabled? Defaults to `true`. | 
| **events_to_export** | string |  -  |  `RawEvents`  |  A list of data which is to exported to analytic workspace. Valid values include `RawEvents`. | 
| **log_analytics_workspace_id** | string |  -  |  -  |  Specifies the Log Analytics Workspace ID to which the security data will be sent. | 
| **log_unmasked_ips_enabled** | bool |  `False`  |  -  |  Should IP addressed be unmasked in the log? Defaults to `false`. | 
| **recommendations_enabled** | [block](#recommendations_enabled-block-structure) |  -  |  -  |  A `recommendations_enabled` block of options to enable or disable as defined below. | 
| **query_for_resources** | string |  -  |  -  |  An Azure Resource Graph query used to set the resources monitored. | 
| **query_subscription_ids** | list |  -  |  -  |  A list of subscription Ids on which the user defined resources query should be executed. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `recommendations_enabled` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `acr_authentication` | bool | No | True | Is Principal Authentication enabled for the ACR repository? Defaults to 'true'. |
| `agent_send_unutilized_msg` | bool | No | True | Is Agent send underutilized messages enabled? Defaults to 'true'. |
| `baseline` | bool | No | True | Is Security related system configuration issues identified? Defaults to 'true'. |
| `edge_hub_mem_optimize` | bool | No | True | Is IoT Edge Hub memory optimized? Defaults to 'true'. |
| `edge_logging_option` | bool | No | True | Is logging configured for IoT Edge module? Defaults to 'true'. |
| `inconsistent_module_settings` | bool | No | True | Is inconsistent module settings enabled for SecurityGroup? Defaults to 'true'. |
| `install_agent` | bool | No | True | is Azure IoT Security agent installed? Defaults to 'true'. |
| `ip_filter_deny_all` | bool | No | True | Is Default IP filter policy denied? Defaults to 'true'. |
| `ip_filter_permissive_rule` | bool | No | True | Is IP filter rule source allowable IP range too large? Defaults to 'true'. |
| `open_ports` | bool | No | True | Is any ports open on the device? Defaults to 'true'. |
| `permissive_firewall_policy` | bool | No | True | Does firewall policy exist which allow necessary communication to/from the device? Defaults to 'true'. |
| `permissive_input_firewall_rules` | bool | No | True | Is only necessary addresses or ports are permitted in? Defaults to 'true'. |
| `permissive_output_firewall_rules` | bool | No | True | Is only necessary addresses or ports are permitted out? Defaults to 'true'. |
| `privileged_docker_options` | bool | No | True | Is high level permissions are needed for the module? Defaults to 'true'. |
| `shared_credentials` | bool | No | True | Is any credentials shared among devices? Defaults to 'true'. |
| `vulnerable_tls_cipher_suite` | bool | No | True | Does TLS cipher suite need to be updated? Defaults to 'true'. |

### `additional_workspace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_types` | string | Yes | - | A list of data types which sent to workspace. Possible values are 'Alerts' and 'RawEvents'. |
| `workspace_id` | string | Yes | - | The resource ID of the Log Analytics Workspace. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Iot Security Solution resource. | 

Additionally, all variables are provided as outputs.
