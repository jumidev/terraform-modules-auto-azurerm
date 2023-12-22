# REQUIRED VARIABLES

variable "container_app_environment_id" {
  description = "(REQUIRED) The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name for this Container App. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "revision_mode" {
  description = "(REQUIRED) The revisions operational mode for the Container App. Possible values include 'Single' and 'Multiple'. In 'Single' mode, a single revision is in operation at any given time. In 'Multiple' mode, more than one revision can be active at a time and can be configured with load distribution via the 'traffic_weight' block in the 'ingress' configuration."
  type        = string

}
variable "template" {
  description = "(REQUIRED) A 'template' block as detailed below."
  type        = map(any)
}
#
# template block structure      :
#   init_container (string)       : The definition of an init container that is part of the group as documented in the 'init_container' block below.
#   container (string)            : (REQUIRED) One or more 'container' blocks as detailed below.
#   max_replicas (number)         : The maximum number of replicas for this container.
#   min_replicas (number)         : The minimum number of replicas for this container.
#   azure_queue_scale_rule (block): One or more 'azure_queue_scale_rule' blocks.
#   custom_scale_rule (block)     : One or more 'custom_scale_rule' blocks.
#   http_scale_rule (block)       : One or more 'http_scale_rule' blocks.
#   tcp_scale_rule (block)        : One or more 'tcp_scale_rule' blocks.
#   revision_suffix (string)      : The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one.
#   volume (block)                : A 'volume' block as detailed below.
#
# volume block structure:
#   name (string)         : (REQUIRED) The name of the volume.
#   storage_name (string) : The name of the 'AzureFile' storage.
#   storage_type (string) : The type of storage volume. Possible values are 'AzureFile', 'EmptyDir' and 'Secret'. Defaults to 'EmptyDir'.
#
# authentication block structure:
#   secret_name (string)          : (REQUIRED) The name of the Container App Secret to use for this Scale Rule Authentication.
#   trigger_parameter (string)    : (REQUIRED) The Trigger Parameter name to use the supply the value retrieved from the 'secret_name'.
#
# http_scale_rule block structure:
#   name (string)                  : (REQUIRED) The name of the Scaling Rule
#   concurrent_requests (number)   : (REQUIRED) - The number of concurrent requests to trigger scaling.
#   authentication (block)         : Zero or more 'authentication' blocks.
#
# azure_queue_scale_rule block structure:
#   name (string)                         : (REQUIRED) The name of the Scaling Rule
#   queue_name (string)                   : (REQUIRED) The name of the Azure Queue
#   queue_length (string)                 : (REQUIRED) The value of the length of the queue to trigger scaling actions.
#   authentication (block)                : (REQUIRED) One or more 'authentication' blocks.
#
# tcp_scale_rule block structure:
#   name (string)                 : (REQUIRED) The name of the Scaling Rule
#   concurrent_requests (number)  : (REQUIRED) - The number of concurrent requests to trigger scaling.
#   authentication (block)        : Zero or more 'authentication' blocks.
#
# custom_scale_rule block structure:
#   name (string)                    : (REQUIRED) The name of the Scaling Rule
#   custom_rule_type (string)        : (REQUIRED) The Custom rule type. Possible values include: 'activemq', 'artemis-queue', 'kafka', 'pulsar', 'aws-cloudwatch', 'aws-dynamodb', 'aws-dynamodb-streams', 'aws-kinesis-stream', 'aws-sqs-queue', 'azure-app-insights', 'azure-blob', 'azure-data-explorer', 'azure-eventhub', 'azure-log-analytics', 'azure-monitor', 'azure-pipelines', 'azure-servicebus', 'azure-queue', 'cassandra', 'cpu', 'cron', 'datadog', 'elasticsearch', 'external', 'external-push', 'gcp-stackdriver', 'gcp-storage', 'gcp-pubsub', 'graphite', 'http', 'huawei-cloudeye', 'ibmmq', 'influxdb', 'kubernetes-workload', 'liiklus', 'memory', 'metrics-api', 'mongodb', 'mssql', 'mysql', 'nats-jetstream', 'stan', 'tcp', 'new-relic', 'openstack-metric', 'openstack-swift', 'postgresql', 'predictkube', 'prometheus', 'rabbitmq', 'redis', 'redis-cluster', 'redis-sentinel', 'redis-streams', 'redis-cluster-streams', 'redis-sentinel-streams', 'selenium-grid','solace-event-queue', and 'github-runner'.
#   metadata (string)                : (REQUIRED) - A map of string key-value pairs to configure the Custom Scale Rule.
#   authentication (block)           : Zero or more 'authentication' blocks.



# OPTIONAL VARIABLES

variable "dapr" {
  description = "A 'dapr' block as detailed below."
  type        = map(any)
  default     = null
}
#
# dapr block structure :
#   app_id (string)      : (REQUIRED) The Dapr Application Identifier.
#   app_port (string)    : The port which the application is listening on. This is the same as the 'ingress' port.
#   app_protocol (string): The protocol for the app. Possible values include 'http' and 'grpc'. Defaults to 'http'.


variable "identity" {
  description = "An 'identity' block as detailed below."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of managed identity to assign. Possible values are 'SystemAssigned', 'UserAssigned', and 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : - A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'.


variable "ingress" {
  description = "An 'ingress' block as detailed below."
  type        = map(any)
  default     = null
}
#
# ingress block structure          :
#   allow_insecure_connections (bool): Should this ingress allow insecure connections?
#   custom_domain (string)           : One or more 'custom_domain' block as detailed below.
#   fqdn (string)                    : The FQDN of the ingress.
#   external_enabled (bool)          : Are connections to this Ingress from outside the Container App Environment enabled? Defaults to 'false'.
#   target_port (string)             : (REQUIRED) The target port on the container for the Ingress traffic.
#   exposed_port (string)            : The exposed port on the container for the Ingress traffic.
#   traffic_weight (block)           : (REQUIRED) A 'traffic_weight' block as detailed below.
#   transport (string)               : The transport method for the Ingress. Possible values are 'auto', 'http', 'http2' and 'tcp'. Defaults to 'auto'.
#
# traffic_weight block structure:
#   label (string)                : The label to apply to the revision as a name prefix for routing traffic.
#   latest_revision (string)      : This traffic Weight relates to the latest stable Container Revision.
#   revision_suffix (string)      : The suffix string to which this 'traffic_weight' applies.
#   percentage (string)           : (REQUIRED) The percentage of traffic which should be sent this revision.


variable "registry" {
  description = "A 'registry' block as detailed below."
  type        = map(any)
  default     = null
}
#
# registry block structure     :
#   server (string)              : (REQUIRED) The hostname for the Container Registry.
#   identity (string)            : Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
#   password_secret_name (string): The name of the Secret Reference containing the password value for this user on the Container Registry, 'username' must also be supplied.
#   username (string)            : The username to use for this Container Registry, 'password_secret_name' must also be supplied..


variable "secret" {
  description = "One or more 'secret' block as detailed below."
  type        = string
  default     = null
}
variable "workload_profile_name" {
  description = "The name of the Workload Profile in the Container App Environment to place this Container App."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Container App."
  type        = map(any)
  default     = null
}
