# azurerm_container_app_job



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container_apps/container_app_job"   
}
inputs = {
   name = "Specifies the name of the Container App Job resource..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   # container_app_environment_id → set in component_inputs
   template = {
   }   
   replica_timeout_in_seconds = "The maximum number of seconds a replica is allowed to run..."   
}
component_inputs = {
   container_app_environment_id = "path/to/container_app_environment_component:id"   
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
| **name** | string |  Specifies the name of the Container App Job resource. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Container App Job. Changing this forces a new resource to be created. | 
| **container_app_environment_id** | string |  The ID of the Container App Environment in which to create the Container App Job. Changing this forces a new resource to be created. | 
| **template** | [block](#template-block-structure) |  A `template` block. | 
| **replica_timeout_in_seconds** | number |  The maximum number of seconds a replica is allowed to run. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **workload_profile_name** | string |  The name of the workload profile to use for the Container App Job. | 
| **replica_retry_limit** | number |  The maximum number of times a replica is allowed to retry. | 
| **secrets** | [block](#secret-block-structure) |  One or more `secret` blocks. | 
| **registrys** | [block](#registry-block-structure) |  One or more `registry` blocks. | 
| **manual_trigger_config** | [block](#manual_trigger_config-block-structure) |  A `manual_trigger_config` block. | 
| **event_trigger_config** | [block](#event_trigger_config-block-structure) |  A `event_trigger_config` block. | 
| **schedule_trigger_config** | [block](#schedule_trigger_config-block-structure) |  A `schedule_trigger_config` block. ~> ** NOTE **: Only one of `manual_trigger_config`, `event_trigger_config` or `schedule_trigger_config` can be specified. | 
| **identity** | [block](#identity-block-structure) |  A `identity` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `event_trigger_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parallelism` | number | No | - | Number of parallel replicas of a job that can run at a given time. |
| `replica_completion_count` | number | No | - | Minimum number of successful replica completions before overall job completion. |
| `scale` | [block](#scale-block-structure) | No | - | A 'scale' block. |

### `liveness_probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | number | Yes | - | The port number on which to connect. Possible values are between '1' and '65535'. |
| `transport` | string | Yes | - | Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'. |
| `failure_count_threshold` | number | No | 3 | The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'. |
| `header` | [block](#header-block-structure) | No | - | A 'header' block as detailed below. |
| `host` | string | No | Host | The probe hostname. Defaults to the pod IP address. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes. |
| `initial_delay` | string | No | - | The time in seconds to wait after the container has started before the probe is started. |
| `interval_seconds` | number | No | 10 | How often, in seconds, the probe should run. Possible values are in the range '1' - '240'. Defaults to '10'. |
| `path` | string | No | / | The URI to use with the 'host' for http type probes. Not valid for 'TCP' type probes. Defaults to '/'. |
| `timeout` | string | No | 1 | Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'. |
| `termination_grace_period_seconds` | number | No | - | The time in seconds after the container is sent the termination signal before the process if forcibly killed. |

### `schedule_trigger_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cron_expression` | string | Yes | - | Cron formatted repeating schedule of a Cron Job. |
| `parallelism` | number | No | - | Number of parallel replicas of a job that can run at a given time. |
| `replica_completion_count` | number | No | - | Minimum number of successful replica completions before overall job completion. |

### `template` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container` | [block](#container-block-structure) | No | - | A 'container' block. |
| `init_container` | [block](#init_container-block-structure) | No | - | A 'init_container' block. |
| `volume` | [block](#volume-block-structure) | No | - | A 'volume' block. |

### `scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_executions` | number | No | - | Maximum number of job executions that are created for a trigger. |
| `min_executions` | number | No | - | Minimum number of job executions that are created for a trigger. |
| `polling_interval_in_seconds` | number | No | - | Interval to check each event source in seconds. |
| `rules` | [block](#rules-block-structure) | No | - | A 'rules' block. |

### `volume_mounts` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the volume to mount. This must match the name of a volume defined in the 'volume' block. |
| `path` | string | Yes | - | The path within the container at which the volume should be mounted. Must not contain ':'. |

### `container` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the container. |
| `cpu` | string | Yes | - | The amount of vCPU to allocate to the container. Possible values include '0.25', '0.5', '0.75', '1.0', '1.25', '1.5', '1.75', and '2.0'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.0' / '2.0' or '0.5' / '1.0' |
| `memory` | string | Yes | - | The amount of memory to allocate to the container. Possible values are '0.5Gi', '1Gi', '1.5Gi', '2Gi', '2.5Gi', '3Gi', '3.5Gi' and '4Gi'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.25' / '2.5Gi' or '0.75' / '1.5Gi' |
| `image` | string | Yes | - | The image to use to create the container. |
| `args` | list | No | - | A list of extra arguments to pass to the container. |
| `command` | list | No | - | A command to pass to the container to override the default. This is provided as a list of command line elements without spaces. |
| `env` | string | No | - | One or more 'env' blocks as detailed below. |
| `ephemeral_storage` | string | No | - | The amount of ephemeral storage available to the Container App. ~> **NOTE:** 'ephemeral_storage' is currently in preview and not configurable at this time. |
| `liveness_probe` | [block](#liveness_probe-block-structure) | No | - | A 'liveness_probe' block as detailed below. |
| `readiness_probe` | [block](#readiness_probe-block-structure) | No | - | A 'readiness_probe' block as detailed below. |
| `startup_probe` | [block](#startup_probe-block-structure) | No | - | A 'startup_probe' block as detailed below. |
| `volume_mounts` | [block](#volume_mounts-block-structure) | No | - | A 'volume_mounts' block as detailed below. |

### `readiness_probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | number | Yes | - | The port number on which to connect. Possible values are between '1' and '65535'. |
| `transport` | string | Yes | - | Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'. |
| `failure_count_threshold` | number | No | 3 | The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'. |
| `header` | [block](#header-block-structure) | No | - | A 'header' block as detailed below. |
| `host` | string | No | Host | The probe hostname. Defaults to the pod IP address. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes. |
| `interval_seconds` | number | No | 10 | How often, in seconds, the probe should run. Possible values are between '1' and '240'. Defaults to '10' |
| `path` | string | No | / | The URI to use for http type probes. Not valid for 'TCP' type probes. Defaults to '/'. |
| `success_count_threshold` | number | No | 3 | The number of consecutive successful responses required to consider this probe as successful. Possible values are between '1' and '10'. Defaults to '3'. |
| `timeout` | string | No | 1 | Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'. |

### `init_container` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the container. |
| `cpu` | string | Yes | - | The amount of vCPU to allocate to the container. Possible values include '0.25', '0.5', '0.75', '1.0', '1.25', '1.5', '1.75', and '2.0'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.0' / '2.0' or '0.5' / '1.0' |
| `memory` | string | Yes | - | The amount of memory to allocate to the container. Possible values are '0.5Gi', '1Gi', '1.5Gi', '2Gi', '2.5Gi', '3Gi', '3.5Gi' and '4Gi'. ~> **NOTE:** 'cpu' and 'memory' must be specified in '0.25'/'0.5Gi' combination increments. e.g. '1.25' / '2.5Gi' or '0.75' / '1.5Gi' |
| `image` | string | Yes | - | The image to use to create the container. |
| `args` | list | No | - | A list of extra arguments to pass to the container. |
| `command` | list | No | - | A command to pass to the container to override the default. This is provided as a list of command line elements without spaces. |
| `env` | string | No | - | One or more 'env' blocks as detailed below. |
| `ephemeral_storage` | string | No | - | The amount of ephemeral storage available to the Container App. ~> **NOTE:** 'ephemeral_storage' is currently in preview and not configurable at this time. |
| `volume_mounts` | [block](#volume_mounts-block-structure) | No | - | A 'volume_mounts' block as detailed below. |

### `volume` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name of the volume. |
| `storage_type` | string | No | - | The type of storage to use for the volume. Possible values are 'AzureFile', 'EmptyDir' and 'Secret'. |
| `storage_name` | string | No | - | The name of the storage to use for the volume. |

### `secret` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The secret name. |
| `identity` | string | No | - | The identity to use for accessing the Key Vault secret reference. This can either be the Resource ID of a User Assigned Identity, or 'System' for the System Assigned Identity. !> **Note:** 'identity' must be used together with 'key_vault_secret_id' |
| `key_vault_secret_id` | string | No | - | The ID of a Key Vault secret. This can be a versioned or version-less ID. !> **Note:** When using 'key_vault_secret_id', 'ignore_changes' should be used to ignore any changes to 'value'. |
| `value` | string | No | - | The value for this secret. !> **Note:** 'value' will be ignored if 'key_vault_secret_id' and 'identity' are provided. |

### `header` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The HTTP Header Name. |
| `value` | string | Yes | - | The HTTP Header value. |

### `manual_trigger_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parallelism` | number | No | - | Number of parallel replicas of a job that can run at a given time. |
| `replica_completion_count` | number | No | - | Minimum number of successful replica completions before overall job completion. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_name` | string | No | - | Name of the secret from which to pull the auth params. |
| `trigger_parameter` | string | No | - | Trigger Parameter that uses the secret. |

### `registry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `identity` | string | No | - | A Managed Identity to use to authenticate with Azure Container Registry. |
| `username` | string | No | - | The username to use to authenticate with Azure Container Registry. |
| `password_secret_name` | string | No | - | The name of the Secret that contains the registry login password. |
| `server` | string | No | - | The URL of the Azure Container Registry server. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | None | The type of identity used for the Container App Job. Possible values are 'SystemAssigned', 'UserAssigned' and 'None'. Defaults to 'None'. |
| `identity_ids` | list | No | - | A list of Managed Identity IDs to assign to the Container App Job. |

### `rules` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | Name of the scale rule. |
| `custom_rule_type` | string | No | - | Type of the scale rule. |
| `metadata` | string | No | - | Metadata properties to describe the scale rule. |
| `authentication` | [block](#authentication-block-structure) | No | - | A 'authentication' block. |

### `startup_probe` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | number | Yes | - | The port number on which to connect. Possible values are between '1' and '65535'. |
| `transport` | string | Yes | - | Type of probe. Possible values are 'TCP', 'HTTP', and 'HTTPS'. |
| `failure_count_threshold` | number | No | 3 | The number of consecutive failures required to consider this probe as failed. Possible values are between '1' and '10'. Defaults to '3'. |
| `header` | [block](#header-block-structure) | No | - | A 'header' block as detailed below. |
| `host` | string | No | - | The value for the host header which should be sent with this probe. If unspecified, the IP Address of the Pod is used as the host header. Setting a value for 'Host' in 'headers' can be used to override this for 'HTTP' and 'HTTPS' type probes. |
| `interval_seconds` | number | No | 10 | How often, in seconds, the probe should run. Possible values are between '1' and '240'. Defaults to '10' |
| `path` | string | No | / | The URI to use with the 'host' for http type probes. Not valid for 'TCP' type probes. Defaults to '/'. |
| `timeout` | string | No | 1 | Time in seconds after which the probe times out. Possible values are in the range '1' - '240'. Defaults to '1'. |
| `termination_grace_period_seconds` | number | No | - | The time in seconds after the container is sent the termination signal before the process if forcibly killed. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **identity_ids** | list | No  | A list of Managed Identity IDs to assign to the Container App Job. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container App Job. | 
| **outbound_ip_addresses** | list | No  | A list of the Public IP Addresses which the Container App uses for outbound network access. | 
| **event_stream_endpoint** | string | No  | The endpoint for the Container App Job event stream. | 

Additionally, all variables are provided as outputs.
