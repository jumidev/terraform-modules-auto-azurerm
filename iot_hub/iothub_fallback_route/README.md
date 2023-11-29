# azurerm_iothub_fallback_route

Manages an IotHub Fallback Route## Disclaimers~> **Note:** Fallback route can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_fallback_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string | True | -  |  -  |  The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created. | 
| **var.source** | string | False | `DeviceMessages`  |  `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`  |  The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`. | 
| **var.enabled** | bool | True | -  |  -  |  Used to specify whether the fallback route is enabled. | 
| **var.endpoint_names** | string | True | -  |  -  |  The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed. | 
| **var.condition** | bool | False | `True`  |  -  |  The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **iothub_name** | string  | - | 
| **source** | string  | - | 
| **enabled** | bool  | - | 
| **endpoint_names** | string  | - | 
| **condition** | bool  | - | 
| **id** | string  | The ID of the IoTHub Fallback Route. | 