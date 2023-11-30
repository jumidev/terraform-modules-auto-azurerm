# azurerm_iothub_fallback_route

Manages an IotHub Fallback Route## Disclaimers~> **Note:** Fallback route can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_fallback_route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.~> **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "iot_hub/iothub_fallback_route" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   iothub_name = "iothub_name of iothub_fallback_route" 
   enabled = "enabled of iothub_fallback_route" 
   endpoint_names = "endpoint_names of iothub_fallback_route" 
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
| **var.resource_group_name** | string  The name of the resource group under which the IotHub Storage Container Endpoint resource has to be created. Changing this forces a new resource to be created. | 
| **var.iothub_name** | string  The name of the IoTHub to which this Fallback Route belongs. Changing this forces a new resource to be created. | 
| **var.enabled** | bool  Used to specify whether the fallback route is enabled. | 
| **var.endpoint_names** | string  The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.source** | string  `DeviceMessages`  |  `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`  |  The source that the routing rule is to be applied to. Possible values include: `DeviceConnectionStateEvents`, `DeviceJobLifecycleEvents`, `DeviceLifecycleEvents`, `DeviceMessages`, `DigitalTwinChangeEvents`, `Invalid`, `TwinChangeEvents`. Defaults to `DeviceMessages`. | 
| **var.condition** | bool  `True`  |  -  |  The condition that is evaluated to apply the routing rule. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>. Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub Fallback Route. | 

Additionally, all variables are provided as outputs.
