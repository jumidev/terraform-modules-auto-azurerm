# azurerm_iot_security_solution

Manages an iot security solution.

## Example minimal component.hclt

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
   iothub_ids = "iothub_ids of iot_security_solution" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  -  |  Specifies the Display Name for this Iot Security Solution. | 
| **var.iothub_ids** | string | True | -  |  -  |  Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied. | 
| **var.additional_workspace** | block | False | -  |  -  |  A `additional_workspace` block. | 
| **var.disabled_data_sources** | bool | False | -  |  -  |  A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Iot Security Solution enabled? Defaults to `true`. | 
| **var.events_to_export** | string | False | -  |  `RawEvents`  |  A list of data which is to exported to analytic workspace. Valid values include `RawEvents`. | 
| **var.log_analytics_workspace_id** | string | False | -  |  -  |  Specifies the Log Analytics Workspace ID to which the security data will be sent. | 
| **var.log_unmasked_ips_enabled** | bool | False | `False`  |  -  |  Should IP addressed be unmasked in the log? Defaults to `false`. | 
| **var.recommendations_enabled** | block | False | -  |  -  |  A `recommendations_enabled` block of options to enable or disable as defined below. | 
| **var.query_for_resources** | string | False | -  |  -  |  An Azure Resource Graph query used to set the resources monitored. | 
| **var.query_subscription_ids** | list | False | -  |  -  |  A list of subscription Ids on which the user defined resources query should be executed. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `additional_workspace` block structure

> `data_types` (string): (REQUIRED) A list of data types which sent to workspace. Possible values are 'Alerts' and 'RawEvents'.
> `workspace_id` (string): (REQUIRED) The resource ID of the Log Analytics Workspace.

### `recommendations_enabled` block structure

> `acr_authentication` (bool): Is Principal Authentication enabled for the ACR repository? Defaults to 'true'.
> `agent_send_unutilized_msg` (bool): Is Agent send underutilized messages enabled? Defaults to 'true'.
> `baseline` (bool): Is Security related system configuration issues identified? Defaults to 'true'.
> `edge_hub_mem_optimize` (bool): Is IoT Edge Hub memory optimized? Defaults to 'true'.
> `edge_logging_option` (bool): Is logging configured for IoT Edge module? Defaults to 'true'.
> `inconsistent_module_settings` (bool): Is inconsistent module settings enabled for SecurityGroup? Defaults to 'true'.
> `install_agent` (bool): is Azure IoT Security agent installed? Defaults to 'true'.
> `ip_filter_deny_all` (bool): Is Default IP filter policy denied? Defaults to 'true'.
> `ip_filter_permissive_rule` (bool): Is IP filter rule source allowable IP range too large? Defaults to 'true'.
> `open_ports` (bool): Is any ports open on the device? Defaults to 'true'.
> `permissive_firewall_policy` (bool): Does firewall policy exist which allow necessary communication to/from the device? Defaults to 'true'.
> `permissive_input_firewall_rules` (bool): Is only necessary addresses or ports are permitted in? Defaults to 'true'.
> `permissive_output_firewall_rules` (bool): Is only necessary addresses or ports are permitted out? Defaults to 'true'.
> `privileged_docker_options` (bool): Is high level permissions are needed for the module? Defaults to 'true'.
> `shared_credentials` (bool): Is any credentials shared among devices? Defaults to 'true'.
> `vulnerable_tls_cipher_suite` (bool): Does TLS cipher suite need to be updated? Defaults to 'true'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Iot Security Solution resource. | 

Additionally, all variables are provided as outputs.
