# azurerm_monitor_smart_detector_alert_rule

Manages an Monitor Smart Detector Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_smart_detector_alert_rule"   
}

inputs = {
   name = "Specifies the name of the Monitor Smart Detector Alert Rule..."   
   resource_group_name = "${resource_group}"   
   detector_type = "Specifies the Built-In Smart Detector type that this alert rule will use..."   
   scope_resource_ids = "Specifies the scopes of this Smart Detector Alert Rule..."   
   action_group = {
      ids = "..."      
   }
   
   severity = "Specifies the severity of this Smart Detector Alert Rule..."   
   frequency = "Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created. | 
| **detector_type** | string |  `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`  |  Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`. | 
| **scope_resource_ids** | string |  -  |  Specifies the scopes of this Smart Detector Alert Rule. | 
| **action_group** | [block](#action_group-block-structure) |  -  |  An `action_group` block. | 
| **severity** | string |  `Sev0`, `Sev1`, `Sev2`, `Sev3`, `Sev4`  |  Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`. | 
| **frequency** | string |  -  |  Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **description** | string |  -  |  Specifies a description for the Smart Detector Alert Rule. | 
| **enabled** | bool |  `True`  |  Is the Smart Detector Alert Rule enabled? Defaults to `true`. | 
| **throttling_duration** | string |  -  |  Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `action_group` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ids` | string | Yes | - | Specifies the action group ids. |
| `email_subject` | string | No | - | Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource. |
| `webhook_payload` | string | No | - | A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Smart Detector Alert Rule. | 

Additionally, all variables are provided as outputs.
