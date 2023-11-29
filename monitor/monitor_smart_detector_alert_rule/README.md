# azurerm_monitor_smart_detector_alert_rule

Manages an Monitor Smart Detector Alert Rule.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **detector_type** | string  | - | 
| **scope_resource_ids** | string  | - | 
| **action_group** | block  | - | 
| **severity** | string  | - | 
| **frequency** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **throttling_duration** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Monitor Smart Detector Alert Rule. | 