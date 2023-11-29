# azurerm_iothub_endpoint_storage_container

Manages an IotHub Storage Container Endpoint~> **NOTE:** Endpoints can be defined either directly on the `azurerm_iothub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azurerm_iothub` resource is not supported.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created. | 
| **container_name** | string | True | -  |  -  | The name of storage container in the storage account. | 
| **iothub_id** | string | True | -  |  -  | The IoTHub ID for the endpoint. Changing this forces a new resource to be created. | 
| **authentication_type** | string | False | `keyBased`  |  `keyBased`, `identityBased`  | Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`. | 
| **identity_id** | string | False | -  |  -  | ID of the User Managed Identity used to authenticate against the storage endpoint. | 
| **endpoint_uri** | string | False | -  |  -  | URI of the Storage Container endpoint. This corresponds to the `primary_blob_endpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`. | 
| **connection_string** | string | False | -  |  -  | The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`. | 
| **batch_frequency_in_seconds** | int | False | -  |  -  | Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. | 
| **max_chunk_size_in_bytes** | int | False | -  |  -  | Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). | 
| **encoding** | string | False | -  |  -  | Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created. | 
| **file_name_format** | string | False | `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`  |  -  | File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`. | 

