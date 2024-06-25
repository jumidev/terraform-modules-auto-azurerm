# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Container App Job resource. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created."
  type        = string

}
variable "container_app_environment_id" {
  description = "(REQUIRED) The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created."
  type        = string

}
variable "template" {
  description = "(REQUIRED) A 'template' block."
  type        = map(any)
}
#
# template block structure:
#   container (block)       : A 'container' block.
#   init_container (block)  : A 'init_container' block.
#   volume (block)          : A 'volume' block.
#
# volume_mounts block structure:
#   name (string)                : (REQUIRED) The name of the volume to mount. This must match the name of a volume defined in the 'volume' block.
#   path (string)                : (REQUIRED) The path within the container at which the volume should be mounted. Must not contain ':'.
#
# volume block structure:
#   name (string)         : The name of the volume.
#   storage_type (string) : The type of storage to use for the volume. Possible values are 'AzureFile', 'EmptyDir' and 'Secret'.
#   storage_name (string) : The name of the storage to use for the volume.
#
# init_container block structure:
#   name (string)                 : (REQUIRED) The name of the container.
#   cpu (string)                  : (REQUIRED) The amount of vCPU to allocate to the container. Possible values include '0.25', '0.5', '0.75', '1.0', '1.25', '1.5', '1.75', and '2.0'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.0' / '2.0' or '0.5' / '1.0'
#   memory (string)               : (REQUIRED) The amount of memory to allocate to the container. Possible values are '0.5Gi', '1Gi', '1.5Gi', '2Gi', '2.5Gi', '3Gi', '3.5Gi' and '4Gi'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.25' / '2.5Gi' or '0.75' / '1.5Gi'
#   image (string)                : (REQUIRED) The image to use to create the container.
#   args (list)                   : A list of extra arguments to pass to the container.
#   command (list)                : A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
#   env (string)                  : One or more 'env' blocks as detailed below.
#   ephemeral_storage (string)    : The amount of ephemeral storage available to the Container App. ~> **NOTE:** 'ephemeral_storage' is currently in preview and not configurable at this time.
#   volume_mounts (block)         : A 'volume_mounts' block as detailed below.
#
# readiness_probe block structure :
#   port (number)                   : (REQUIRED) The port number on which to connect. Possible values are between '1' and '65535'.
#   transport (string)              : (REQUIRED) Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'.
#   failure_count_threshold (number): The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'.
#   header (block)                  : A 'header' block as detailed below.
#   host (string)                   : The probe hostname. Defaults to the pod IP address. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes.
#   interval_seconds (number)       : How often, in seconds, the probe should run. Possible values are between '1' and '240'. Defaults to '10'
#   path (string)                   : The URI to use for http type probes. Not valid for 'TCP' type probes. Defaults to '/'.
#   success_count_threshold (number): The number of consecutive successful responses required to consider this probe as successful. Possible values are between '1' and '10'. Defaults to '3'.
#   timeout (string)                : Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'.
#
# header block structure:
#   name (string)         : (REQUIRED) The HTTP Header Name.
#   value (string)        : (REQUIRED) The HTTP Header value.
#
# container block structure :
#   name (string)             : (REQUIRED) The name of the container.
#   cpu (string)              : (REQUIRED) The amount of vCPU to allocate to the container. Possible values include '0.25', '0.5', '0.75', '1.0', '1.25', '1.5', '1.75', and '2.0'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.0' / '2.0' or '0.5' / '1.0'
#   memory (string)           : (REQUIRED) The amount of memory to allocate to the container. Possible values are '0.5Gi', '1Gi', '1.5Gi', '2Gi', '2.5Gi', '3Gi', '3.5Gi' and '4Gi'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.25' / '2.5Gi' or '0.75' / '1.5Gi'
#   image (string)            : (REQUIRED) The image to use to create the container.
#   args (list)               : A list of extra arguments to pass to the container.
#   command (list)            : A command to pass to the container to override the default. This is provided as a list of command line elements without spaces.
#   env (string)              : One or more 'env' blocks as detailed below.
#   ephemeral_storage (string): The amount of ephemeral storage available to the Container App. ~> **NOTE:** 'ephemeral_storage' is currently in preview and not configurable at this time.
#   liveness_probe (block)    : A 'liveness_probe' block as detailed below.
#   readiness_probe (block)   : A 'readiness_probe' block as detailed below.
#   startup_probe (block)     : A 'startup_probe' block as detailed below.
#   volume_mounts (block)     : A 'volume_mounts' block as detailed below.
#
# liveness_probe block structure           :
#   port (number)                            : (REQUIRED) The port number on which to connect. Possible values are between '1' and '65535'.
#   transport (string)                       : (REQUIRED) Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'.
#   failure_count_threshold (number)         : The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'.
#   header (block)                           : A 'header' block as detailed below.
#   host (string)                            : The probe hostname. Defaults to the pod IP address. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes.
#   initial_delay (string)                   : The time in seconds to wait after the container has started before the probe is started.
#   interval_seconds (number)                : How often, in seconds, the probe should run. Possible values are in the range '1' - '240'. Defaults to '10'.
#   path (string)                            : The URI to use with the 'host' for http type probes. Not valid for 'TCP' type probes. Defaults to '/'.
#   timeout (string)                         : Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'.
#   termination_grace_period_seconds (number): The time in seconds after the container is sent the termination signal before the process if forcibly killed.
#
# startup_probe block structure            :
#   port (number)                            : (REQUIRED) The port number on which to connect. Possible values are between '1' and '65535'.
#   transport (string)                       : (REQUIRED) Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'.
#   failure_count_threshold (number)         : The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'.
#   header (block)                           : A 'header' block as detailed below.
#   host (string)                            : The value for the host header which should be sent with this probe. If unspecified, the IP Address of the Pod is used as the host header. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes.
#   interval_seconds (number)                : How often, in seconds, the probe should run. Possible values are between '1' and '240'. Defaults to '10'
#   path (string)                            : The URI to use with the 'host' for http type probes. Not valid for 'TCP' type probes. Defaults to '/'.
#   timeout (string)                         : Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'.
#   termination_grace_period_seconds (number): The time in seconds after the container is sent the termination signal before the process if forcibly killed.


variable "replica_timeout_in_seconds" {
  description = "(REQUIRED) The maximum number of seconds a replica is allowed to run."
  type        = number

}

# OPTIONAL VARIABLES

variable "workload_profile_name" {
  description = "The name of the workload profile to use for the Container App Job."
  type        = string
  default     = null
}
variable "replica_retry_limit" {
  description = "The maximum number of times a replica is allowed to retry."
  type        = number
  default     = null
}
variable "secrets" {
  description = "One or more 'secret' blocks."
  type        = map(map(any))
  default     = null
}
#
# secret block structure      :
#   name (string)               : (REQUIRED) The secret name.
#   identity (string)           : The identity to use for accessing the Key Vault secret reference. This can either be the Resource ID of a User Assigned Identity, or 'System' for the System Assigned Identity. !> **Note:** 'identity' must be used together with 'key_vault_secret_id'
#   key_vault_secret_id (string): The ID of a Key Vault secret. This can be a versioned or version-less ID. !> **Note:** When using 'key_vault_secret_id', 'ignore_changes' should be used to ignore any changes to 'value'.
#   value (string)              : The value for this secret. !> **Note:** 'value' will be ignored if 'key_vault_secret_id' and 'identity' are provided.


variable "registries" {
  description = "One or more 'registry' blocks."
  type        = map(map(any))
  default     = null
}
#
# registry block structure     :
#   identity (string)            : A Managed Identity to use to authenticate with Azure Container Registry.
#   username (string)            : The username to use to authenticate with Azure Container Registry.
#   password_secret_name (string): The name of the Secret that contains the registry login password.
#   server (string)              : The URL of the Azure Container Registry server.


variable "manual_trigger_config" {
  description = "A 'manual_trigger_config' block."
  type        = map(any)
  default     = null
}
#
# manual_trigger_config block structure:
#   parallelism (number)                 : Number of parallel replicas of a job that can run at a given time.
#   replica_completion_count (number)    : Minimum number of successful replica completions before overall job completion.


variable "event_trigger_config" {
  description = "A 'event_trigger_config' block."
  type        = map(any)
  default     = null
}
#
# event_trigger_config block structure:
#   parallelism (number)                : Number of parallel replicas of a job that can run at a given time.
#   replica_completion_count (number)   : Minimum number of successful replica completions before overall job completion.
#   scale (block)                       : A 'scale' block.
#
# authentication block structure:
#   secret_name (string)          : Name of the secret from which to pull the auth params.
#   trigger_parameter (string)    : Trigger Parameter that uses the secret.
#
# rules block structure    :
#   name (string)            : Name of the scale rule.
#   custom_rule_type (string): Type of the scale rule.
#   metadata (string)        : Metadata properties to describe the scale rule.
#   authentication (block)   : A 'authentication' block.
#
# scale block structure               :
#   max_executions (number)             : Maximum number of job executions that are created for a trigger.
#   min_executions (number)             : Minimum number of job executions that are created for a trigger.
#   polling_interval_in_seconds (number): Interval to check each event source in seconds.
#   rules (block)                       : A 'rules' block.


variable "schedule_trigger_config" {
  description = "A 'schedule_trigger_config' block. ~> ** NOTE **: Only one of 'manual_trigger_config', 'event_trigger_config' or 'schedule_trigger_config' can be specified."
  type        = map(any)
  default     = null
}
#
# schedule_trigger_config block structure:
#   cron_expression (string)               : (REQUIRED) Cron formatted repeating schedule of a Cron Job.
#   parallelism (number)                   : Number of parallel replicas of a job that can run at a given time.
#   replica_completion_count (number)      : Minimum number of successful replica completions before overall job completion.


variable "identity" {
  description = "A 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : The type of identity used for the Container App Job. Possible values are 'SystemAssigned', 'UserAssigned' and 'None'. Defaults to 'None'.
#   identity_ids (list)     : A list of Managed Identity IDs to assign to the Container App Job.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
