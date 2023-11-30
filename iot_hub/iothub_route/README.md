# azurerm_iothub_route

Manages an IotHub Route~> **NOTE:** Routes can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_route" 
}

inputs = {
   name = "name of iothub_route" 
   resource_group_name = "${resource_group}" 
   iothub_name = "iothub_name of iothub_route" 
   source = "source of iothub_route" 
   endpoint_names = "endpoint_names of iothub_route" 
   enabled = "enabled of iothub_route" 
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
| **var.name** | string  -  |  The name of the route. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the resource group under which the IotHub Route resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string  -  |  The name of the IoTHub to which this Route belongs. Changing this forces a new resource to be created. | 
| **var.source** | string  `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`  |  The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. | 
| **var.endpoint_names** | string  -  |  The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed. | 
| **var.enabled** | bool  -  |  Specifies whether a route is enabled. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.condition** | bool  `True`  |  The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Route. | 

Additionally, all variables are provided as outputs.
