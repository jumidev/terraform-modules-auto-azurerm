# azurerm_container_registry_task

Manages a Container Registry Task.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry_task"   
}

inputs = {
   name = "The name which should be used for this Container Registry Task..."   
   # container_registry_id → set in component_inputs
}

component_inputs = {
   container_registry_id = "path/to/container_registry_component:id"   
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
| **name** | string |  The name which should be used for this Container Registry Task. Changing this forces a new Container Registry Task to be created. | 
| **container_registry_id** | string |  The ID of the Container Registry that this Container Registry Task resides in. Changing this forces a new Container Registry Task to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **agent_pool_name** | string |  -  |  The name of the dedicated Container Registry Agent Pool for this Container Registry Task. | 
| **agent_setting** | [block](#agent_setting-block-structure) |  -  |  A `agent_setting` block. | 
| **enabled** | bool |  `True`  |  Should this Container Registry Task be enabled? Defaults to `true`. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **platform** | [block](#platform-block-structure) |  -  |  A `platform` block. | 
| **docker_step** | [block](#docker_step-block-structure) |  -  |  A `docker_step` block. | 
| **encoded_step** | [block](#encoded_step-block-structure) |  -  |  A `encoded_step` block. | 
| **file_step** | [block](#file_step-block-structure) |  -  |  A `file_step` block. | 
| **base_image_trigger** | [block](#base_image_trigger-block-structure) |  -  |  A `base_image_trigger` block. | 
| **source_trigger** | [block](#source_trigger-block-structure) |  -  |  One or more `source_trigger` blocks. | 
| **timer_trigger** | [block](#timer_trigger-block-structure) |  -  |  One or more `timer_trigger` blocks. | 
| **is_system_task** | bool |  `False`  |  Whether this Container Registry Task is a system task. Changing this forces a new Container Registry Task to be created. Defaults to `false`. | 
| **log_template** | string |  -  |  The template that describes the run log artifact. | 
| **registry_credential** | [block](#registry_credential-block-structure) |  -  |  One `registry_credential` block. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Container Registry Task. | 
| **timeout_in_seconds** | number |  `3600`  |  The timeout of this Container Registry Task in seconds. The valid range lies from 300 to 28800. Defaults to `3600`. | 

### `agent_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cpu` | number | Yes | - | The number of cores required for the Container Registry Task. |

### `encoded_step` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `task_content` | string | Yes | - | The (optionally base64 encoded) content of the build template. |
| `context_access_token` | string | No | - | The token (Git PAT or SAS token of storage account blob) associated with the context for this step. |
| `context_path` | string | No | - | The URL (absolute or relative) of the source context for this step. |
| `secret_values` | string | No | - | Specifies a map of secret values that can be passed when running a task. |
| `value_content` | string | No | - | The (optionally base64 encoded) content of the build parameters. |
| `values` | string | No | - | Specifies a map of values that can be passed when running a task. |

### `timer_trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this trigger. |
| `schedule` | string | Yes | - | The CRON expression for the task schedule. |
| `enabled` | bool | No | True | Should the trigger be enabled? Defaults to 'true'. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Container Registry Task. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry Task. |

### `base_image_trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this trigger. |
| `type` | string | Yes | - | The type of the trigger. Possible values are 'All' and 'Runtime'. |
| `enabled` | bool | No | True | Should the trigger be enabled? Defaults to 'true'. |
| `update_trigger_endpoint` | string | No | - | The endpoint URL for receiving the trigger. |
| `update_trigger_payload_type` | string | No | - | Type of payload body for the trigger. Possible values are 'Default' and 'Token'. |

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `login_mode` | string | Yes | - | The login mode for the source registry. Possible values are 'None' and 'Default'. |

### `file_step` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `task_file_path` | string | Yes | - | The task template file path relative to the source context. |
| `context_access_token` | string | No | - | The token (Git PAT or SAS token of storage account blob) associated with the context for this step. |
| `context_path` | string | No | - | The URL (absolute or relative) of the source context for this step. |
| `secret_values` | string | No | - | Specifies a map of secret values that can be passed when running a task. |
| `value_file_path` | string | No | - | The parameters file path relative to the source context. |
| `values` | string | No | - | Specifies a map of values that can be passed when running a task. |

### `platform` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `architecture` | string | No | - | The OS architecture. Possible values are 'amd64', 'x86', '386', 'arm' and 'arm64'. |
| `variant` | string | No | - | The variant of the CPU. Possible values are 'v6', 'v7', 'v8'. |

### `source_trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this trigger. |
| `events` | string | Yes | - | Specifies a list of source events corresponding to the trigger. Possible values are 'commit' and 'pullrequest'. |
| `repository_url` | string | Yes | - | The full URL to the source code repository. |
| `source_type` | string | Yes | - | The type of the source control service. Possible values are 'Github' and 'VisualStudioTeamService'. |
| `authentication` | [block](#authentication-block-structure) | No | - | A 'authentication' block. |
| `branch` | string | No | - | The branch name of the source code. |
| `enabled` | bool | No | True | Should the trigger be enabled? Defaults to 'true'. |

### `registry_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source` | [block](#source-block-structure) | No | - | One 'source' block. |
| `custom` | list | No | - | One or more 'custom' blocks. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `token` | string | Yes | - | The access token used to access the source control provider. |
| `token_type` | string | Yes | - | The type of the token. Possible values are 'PAT' (personal access token) and 'OAuth'. |
| `expire_in_seconds` | number | No | - | Time in seconds that the token remains valid. |
| `refresh_token` | string | No | - | The refresh token used to refresh the access token. |
| `scope` | string | No | - | The scope of the access token. |

### `docker_step` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `context_access_token` | string | Yes | - | The token (Git PAT or SAS token of storage account blob) associated with the context for this step. |
| `context_path` | string | Yes | - | The URL (absolute or relative) of the source context for this step. If the context is an url you can reference a specific branch or folder via '#branch:folder'. |
| `dockerfile_path` | string | Yes | - | The Dockerfile path relative to the source context. |
| `arguments` | string | No | - | Specifies a map of arguments to be used when executing this step. |
| `image_names` | string | No | - | Specifies a list of fully qualified image names including the repository and tag. |
| `cache_enabled` | bool | No | True | Should the image cache be enabled? Defaults to 'true'. |
| `push_enabled` | bool | No | True | Should the image built be pushed to the registry or not? Defaults to 'true'. |
| `secret_arguments` | string | No | - | Specifies a map of *secret* arguments to be used when executing this step. |
| `target` | string | No | - | The name of the target build stage for the docker build. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry Task. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
