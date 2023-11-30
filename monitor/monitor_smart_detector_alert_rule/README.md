# azurerm_monitor_smart_detector_alert_rule

Manages an Monitor Smart Detector Alert Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_smart_detector_alert_rule" 
}

inputs = {
   name = "name of monitor_smart_detector_alert_rule" 
   resource_group_name = "${resource_group}" 
   detector_type = "detector_type of monitor_smart_detector_alert_rule" 
   scope_resource_ids = "scope_resource_ids of monitor_smart_detector_alert_rule" 
   action_group = "action_group of monitor_smart_detector_alert_rule" 
   severity = "severity of monitor_smart_detector_alert_rule" 
   frequency = "frequency of monitor_smart_detector_alert_rule" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Monitor Smart Detector Alert Rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the resource group in which the Monitor Smart Detector Alert Rule should exist. Changing this forces a new resource to be created. | 
| **var.detector_type** | string | True | -  |  `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`  |  Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are `FailureAnomaliesDetector`, `RequestPerformanceDegradationDetector`, `DependencyPerformanceDegradationDetector`, `ExceptionVolumeChangedDetector`, `TraceSeverityDetector`, `MemoryLeakDetector`. | 
| **var.scope_resource_ids** | string | True | -  |  -  |  Specifies the scopes of this Smart Detector Alert Rule. | 
| **var.action_group** | block | True | -  |  -  |  An `action_group` block. | 
| **var.severity** | string | True | -  |  `Sev0`, `Sev1`, `Sev2`, `Sev3`, `Sev4`  |  Specifies the severity of this Smart Detector Alert Rule. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3` or `Sev4`. | 
| **var.frequency** | string | True | -  |  -  |  Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format. | 
| **var.description** | string | False | -  |  -  |  Specifies a description for the Smart Detector Alert Rule. | 
| **var.enabled** | bool | False | `True`  |  -  |  Is the Smart Detector Alert Rule enabled? Defaults to `true`. | 
| **var.throttling_duration** | string | False | -  |  -  |  Specifies the duration (in ISO8601 format) to wait before notifying on the alert rule again. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `action_group` block structure

>`ids` (string): (REQUIRED) Specifies the action group ids.
>`email_subject` (string): Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
>`webhook_payload` (string): A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Smart Detector Alert Rule. | 

Additionally, all variables are provided as outputs.
