# azurerm_iothub_endpoint_servicebus_queue

Manages an IotHub ServiceBus Queue Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group under which the Service Bus Queue has been created. Changing this forces a new resource to be created. | 
| **var.authentication_type** | string | False | `keyBased`  |  `keyBased`, `identityBased`  |  Type used to authenticate against the Service Bus Queue endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **var.identity_id** | string | False | -  |  -  |  ID of the User Managed Identity used to authenticate against the Service Bus Queue endpoint. | 
| **var.endpoint_uri** | string | False | -  |  -  |  URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **var.entity_path** | string | False | -  |  -  |  Name of the Service Bus Queue. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **var.connection_string** | string | False | -  |  -  |  The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`. | 
| **var.iothub_id** | string | True | -  |  -  |  The IoTHub ID for the endpoint. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **authentication_type** | string  | - | 
| **identity_id** | string  | - | 
| **endpoint_uri** | string  | - | 
| **entity_path** | string  | - | 
| **connection_string** | string  | - | 
| **iothub_id** | string  | - | 
| **id** | string  | The ID of the IoTHub ServiceBus Queue Endpoint. | 