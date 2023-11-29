# azurerm_iot_security_solution

Manages an iot security solution.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **display_name** | string | True | -  |  -  | Specifies the Display Name for this Iot Security Solution. | 
| **iothub_ids** | string | True | -  |  -  | Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied. | 
| **additional_workspace** | block | False | -  |  -  | A `additional_workspace` block. | 
| **disabled_data_sources** | bool | False | -  |  -  | A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`. | 
| **enabled** | bool | False | `True`  |  -  | Is the Iot Security Solution enabled? Defaults to `true`. | 
| **events_to_export** | string | False | -  |  `RawEvents`  | A list of data which is to exported to analytic workspace. Valid values include `RawEvents`. | 
| **log_analytics_workspace_id** | string | False | -  |  -  | Specifies the Log Analytics Workspace ID to which the security data will be sent. | 
| **log_unmasked_ips_enabled** | bool | False | `False`  |  -  | Should IP addressed be unmasked in the log? Defaults to `false`. | 
| **recommendations_enabled** | block | False | -  |  -  | A `recommendations_enabled` block of options to enable or disable as defined below. | 
| **query_for_resources** | string | False | -  |  -  | An Azure Resource Graph query used to set the resources monitored. | 
| **query_subscription_ids** | list | False | -  |  -  | A list of subscription Ids on which the user defined resources query should be executed. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

