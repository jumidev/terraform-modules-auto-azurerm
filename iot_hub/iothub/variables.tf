# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the IotHub resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   capacity (int)     : (REQUIRED) The number of provisioned IoT Hub units.



# OPTIONAL VARIABLES

variable "local_authentication_enabled" {
  description = "If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "event_hub_partition_count" {
  description = "The number of device-to-cloud partitions used by backing event hubs. Must be between '2' and '128'."
  type        = int
  default     = null
}
variable "event_hub_retention_in_days" {
  description = "The event hub retention to use in days. Must be between '1' and '7'."
  type        = int
  default     = null
}
variable "endpoint" {
  description = "An 'endpoint' block."
  type        = map(any)
  default     = null
}
#
# endpoint block structure        :
#   type (string)                   : (REQUIRED) The type of the endpoint. Possible values are 'AzureIotHub.StorageContainer', 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'.
#   authentication_type (string)    : The type used to authenticate against the endpoint. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'.
#   identity_id (string)            : The ID of the User Managed Identity used to authenticate against the endpoint.
#   endpoint_uri (string)           : URI of the Service Bus or Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased' for endpoint type 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'.
#   entity_path (string)            : Name of the Service Bus Queue/Topic or Event Hub. This attribute can only be specified and is mandatory when 'authentication_type' is 'identityBased' for endpoint type 'AzureIotHub.ServiceBusQueue', 'AzureIotHub.ServiceBusTopic' or 'AzureIotHub.EventHub'.
#   connection_string (string)      : The connection string for the endpoint. This attribute is mandatory and can only be specified when 'authentication_type' is 'keyBased'.
#   batch_frequency_in_seconds (int): Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'.
#   max_chunk_size_in_bytes (int)   : Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'.
#   container_name (string)         : The name of storage container in the storage account. This attribute is mandatory for endpoint type 'AzureIotHub.StorageContainer'.
#   encoding (string)               : Encoding that is used to serialize messages to blobs. Supported values are 'Avro', 'AvroDeflate' and 'JSON'. Default value is 'Avro'. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. Changing this forces a new resource to be created.
#   file_name_format (string)       : File name format for the blob. All parameters are mandatory but can be reordered. This attribute is applicable for endpoint type 'AzureIotHub.StorageContainer'. Defaults to '{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}'.
#   resource_group_name (string)    : The resource group in which the endpoint will be created.


variable "fallback_route" {
  description = "A 'fallback_route' block. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events."
  type        = map(any)
  default     = null
}
#
# fallback_route block structure:
#   source (string)               : The source that the routing rule is to be applied to, such as 'DeviceMessages'. Possible values include: 'Invalid', 'DeviceMessages', 'TwinChangeEvents', 'DeviceLifecycleEvents', 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents' and 'DigitalTwinChangeEvents'. Defaults to 'DeviceMessages'.
#   condition (bool)              : The condition that is evaluated to apply the routing rule. Defaults to 'true'. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
#   endpoint_names (string)       : The endpoints to which messages that satisfy the condition are routed. Currently only 1 endpoint is allowed.
#   enabled (bool)                : Used to specify whether the fallback route is enabled.


variable "file_upload" {
  description = "A 'file_upload' block."
  type        = map(any)
  default     = null
}
#
# file_upload block structure :
#   authentication_type (string): The type used to authenticate against the storage account. Possible values are 'keyBased' and 'identityBased'. Defaults to 'keyBased'.
#   identity_id (string)        : The ID of the User Managed Identity used to authenticate against the storage account.
#   connection_string (string)  : (REQUIRED) The connection string for the Azure Storage account to which files are uploaded.
#   container_name (string)     : (REQUIRED) The name of the root container where the files should be uploaded to. The container need not exist but should be creatable using the connection_string specified.
#   sas_ttl (string)            : The period of time for which the SAS URI generated by IoT Hub for file upload is valid, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 24 hours. Defaults to 'PT1H'.
#   notifications (bool)        : Used to specify whether file notifications are sent to IoT Hub on upload. Defaults to 'false'.
#   lock_duration (string)      : The lock duration for the file upload notifications queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to 'PT1M'.
#   default_ttl (string)        : The period of time for which a file upload notification message is available to consume before it expires, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'.
#   max_delivery_count (int)    : The number of times the IoT Hub attempts to deliver a file upload notification message. Defaults to '10'.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this IoT Hub. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this IoT Hub.


variable "network_rule_set" {
  description = "A 'network_rule_set' block."
  type        = map(any)
  default     = null
}
#
# network_rule_set block structure         :
#   default_action (string)                  : Default Action for Network Rule Set. Possible values are 'Deny', 'Allow'. Defaults to 'Deny'.
#   apply_to_builtin_eventhub_endpoint (bool): Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to 'false'.
#   ip_rule (block)                          : One or more 'ip_rule' blocks.
#
# ip_rule block structure:
#   ip_mask (string)       : (REQUIRED) The IP address range in CIDR notation for the IP rule.
#   action (string)        : The desired action for requests captured by this rule. Possible values are 'Allow'. Defaults to 'Allow'.


variable "route" {
  description = "A 'route' block."
  type        = map(any)
  default     = null
}
#
# route block structure  :
#   source (string)        : (REQUIRED) The source that the routing rule is to be applied to, such as 'DeviceMessages'. Possible values include: 'Invalid', 'DeviceMessages', 'TwinChangeEvents', 'DeviceLifecycleEvents', 'DeviceConnectionStateEvents', 'DeviceJobLifecycleEvents' and 'DigitalTwinChangeEvents'.
#   condition (bool)       : The condition that is evaluated to apply the routing rule. Defaults to 'true'. For grammar, see: <https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language>.
#   endpoint_names (string): (REQUIRED) The list of endpoints to which messages that satisfy the condition are routed.
#   enabled (bool)         : (REQUIRED) Used to specify whether a route is enabled.


variable "enrichment" {
  description = "A 'enrichment' block."
  type        = map(any)
  default     = null
}
#
# enrichment block structure:
#   key (string)              : (REQUIRED) The key of the enrichment.
#   value (string)            : (REQUIRED) The value of the enrichment. Value can be any static string, the name of the IoT Hub sending the message (use '$iothubname') or information from the device twin (ex: '$twin.tags.latitude')
#   endpoint_names (string)   : (REQUIRED) The list of endpoints which will be enriched.


variable "cloud_to_device" {
  description = "A 'cloud_to_device' block."
  type        = map(any)
  default     = null
}
#
# cloud_to_device block structure:
#   max_delivery_count (int)       : The maximum delivery count for cloud-to-device per-device queues. This value must be between '1' and '100'. Defaults to '10'.
#   default_ttl (string)           : The default time to live for cloud-to-device messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'.
#   feedback (block)               : A 'feedback' block.
#
# feedback block structure:
#   time_to_live (string)   : The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to 'PT1H'.
#   max_delivery_count (int): The maximum delivery count for the feedback queue. This value must be between '1' and '100'. Defaults to '10'.
#   lock_duration (string)  : The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to 'PT60S'.


variable "public_network_access_enabled" {
  description = "Is the IotHub resource accessible from a public network?"
  type        = bool
  default     = null
}
variable "min_tls_version" {
  description = "Specifies the minimum TLS version to support for this hub. The only valid value is '1.2'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
