# azurerm_iothub_route

Manages an IotHub Route~> **NOTE:** Routes can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the route. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created. | 
| **iothub_name** | string | True | -  |  -  | The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created. | 
| **source** | string | True | -  |  `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`  | The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. | 
| **condition** | bool | False | `True`  |  -  | The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`. | 
| **endpoint_names** | string | True | -  |  -  | The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed. | 
| **enabled** | bool | True | -  |  -  | Specifies whether a route is enabled. | 

