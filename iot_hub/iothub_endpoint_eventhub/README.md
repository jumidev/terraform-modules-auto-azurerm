# azurerm_iothub_endpoint_eventhub

Manages an IotHub EventHub Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Event Hub has been created. Changing this forces a new resource to be created. | 
| **authentication_type** | string | False | `keyBased`  |  `keyBased`, `identityBased`  | Type used to authenticate against the Event Hub endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **identity_id** | string | False | -  |  -  | ID of the User Managed Identity used to authenticate against the Event Hub endpoint. | 
| **endpoint_uri** | string | False | -  |  -  | URI of the Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **entity_path** | string | False | -  |  -  | Name of the Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **connection_string** | string | False | -  |  -  | The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`. | 
| **iothub_id** | string | True | -  |  -  | The IoTHub ID for the endpoint. Changing this forces a new resource to be created. | 

