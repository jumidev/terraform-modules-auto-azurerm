# azurerm_iothub_endpoint_servicebus_topic

Manages an IotHub ServiceBus Topic Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "iot_hub/iothub_endpoint_servicebus_topic"   
}

inputs = {
   name = "The name of the endpoint"   
   resource_group_name = "${resource_group}"   
   # iothub_id → set in component_inputs
}

component_inputs = {
   iothub_id = "path/to/iothub_component:id"   
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
| **name** | string |  The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group under which the Service Bus Topic has been created. Changing this forces a new resource to be created. | 
| **iothub_id** | string |  The IoTHub ID for the endpoint. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **authentication_type** | string |  `keyBased`  |  `keyBased`, `identityBased`  |  Type used to authenticate against the Service Bus Topic endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **identity_id** | string |  -  |  -  |  ID of the User Managed Identity used to authenticate against the Service Bus Topic endpoint. | 
| **endpoint_uri** | string |  -  |  -  |  URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **entity_path** | string |  -  |  -  |  Name of the Service Bus Topic. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **connection_string** | string |  -  |  -  |  The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoTHub ServiceBus Topic Endpoint. | 

Additionally, all variables are provided as outputs.
