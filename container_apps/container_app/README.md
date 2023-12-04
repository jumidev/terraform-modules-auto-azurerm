# azurerm_container_app

Manages a Container App.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container_apps/container_app" 
}

inputs = {
   container_app_environment_id = "container_app_environment_id of container_app" 
   name = "name of container_app" 
   resource_group_name = "${resource_group}" 
   revision_mode = "revision_mode of container_app" 
   template = {
      example_template = {
         container = "..."   
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **container_app_environment_id** | string |  -  |  The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created. | 
| **name** | string |  -  |  The name for this Container App. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created. | 
| **revision_mode** | string |  `Single`, `Multiple`  |  The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration. | 
| **template** | [block](#template-block-structure) |  -  |  A `template` block as detailed below. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **dapr** | [block](#dapr-block-structure) |  A `dapr` block as detailed below. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block as detailed below. | 
| **ingress** | [block](#ingress-block-structure) |  An `ingress` block as detailed below. | 
| **registry** | [block](#registry-block-structure) |  A `registry` block as detailed below. | 
| **secret** | list |  One or more `secret` block as detailed below. | 
| **tags** | map |  A mapping of tags to assign to the Container App. | 

### `http_scale_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `concurrent_requests` | int | Yes | - | - The number of concurrent requests to trigger scaling. |
| `authentication` | [block](#http_scale_rule-block-structure) | No | - | Zero or more 'authentication' blocks. |

### `azure_queue_scale_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `queue_name` | string | Yes | - | The name of the Azure Queue |
| `queue_length` | string | Yes | - | The value of the length of the queue to trigger scaling actions. |
| `authentication` | [block](#azure_queue_scale_rule-block-structure) | Yes | - | One or more 'authentication' blocks. |

### `custom_scale_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_rule_type` | string | Yes | - | The Custom rule type. Possible values include: 'activemq', 'artemis-queue', 'kafka', 'pulsar', 'aws-cloudwatch', 'aws-dynamodb', 'aws-dynamodb-streams', 'aws-kinesis-stream', 'aws-sqs-queue', 'azure-app-insights', 'azure-blob', 'azure-data-explorer', 'azure-eventhub', 'azure-log-analytics', 'azure-monitor', 'azure-pipelines', 'azure-servicebus', 'azure-queue', 'cassandra', 'cpu', 'cron', 'datadog', 'elasticsearch', 'external', 'external-push', 'gcp-stackdriver', 'gcp-storage', 'gcp-pubsub', 'graphite', 'http', 'huawei-cloudeye', 'ibmmq', 'influxdb', 'kubernetes-workload', 'liiklus', 'memory', 'metrics-api', 'mongodb', 'mssql', 'mysql', 'nats-jetstream', 'stan', 'tcp', 'new-relic', 'openstack-metric', 'openstack-swift', 'postgresql', 'predictkube', 'prometheus', 'rabbitmq', 'redis', 'redis-cluster', 'redis-sentinel', 'redis-streams', 'redis-cluster-streams', 'redis-sentinel-streams', 'selenium-grid','solace-event-queue', and 'github-runner'. |
| `metadata` | string | Yes | - | - A map of string key-value pairs to configure the Custom Scale Rule. |
| `authentication` | [block](#custom_scale_rule-block-structure) | No | - | Zero or more 'authentication' blocks. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of managed identity to assign. Possible values are 'SystemAssigned', 'UserAssigned', and 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | - A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. |

### `volume` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_name` | string | No | - | The name of the 'AzureFile' storage. |
| `storage_type` | string | No | EmptyDir | The type of storage volume. Possible values are 'AzureFile', 'EmptyDir' and 'Secret'. Defaults to 'EmptyDir'. |

### `authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `secret_name` | string | Yes | - | The name of the Container App Secret to use for this Scale Rule Authentication. |
| `trigger_parameter` | string | Yes | - | The Trigger Parameter name to use the supply the value retrieved from the 'secret_name'. |

### `tcp_scale_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `concurrent_requests` | int | Yes | - | - The number of concurrent requests to trigger scaling. |
| `authentication` | [block](#tcp_scale_rule-block-structure) | No | - | Zero or more 'authentication' blocks. |

### `ingress` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allow_insecure_connections` | bool | No | - | Should this ingress allow insecure connections? |
| `custom_domain` | list | No | - | One or more 'custom_domain' block as detailed below. |
| `fqdn` | string | No | - | The FQDN of the ingress. |
| `external_enabled` | bool | No | False | Are connections to this Ingress from outside the Container App Environment enabled? Defaults to 'false'. |
| `target_port` | string | Yes | - | The target port on the container for the Ingress traffic. |
| `exposed_port` | string | No | - | The exposed port on the container for the Ingress traffic. |
| `traffic_weight` | [block](#ingress-block-structure) | Yes | - | A 'traffic_weight' block as detailed below. |
| `transport` | string | No | auto | The transport method for the Ingress. Possible values are 'auto', 'http', 'http2' and 'tcp'. Defaults to 'auto'. |

### `dapr` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_id` | string | Yes | - | The Dapr Application Identifier. |
| `app_port` | string | No | - | The port which the application is listening on. This is the same as the 'ingress' port. |
| `app_protocol` | string | No | http | The protocol for the app. Possible values include 'http' and 'grpc'. Defaults to 'http'. |

### `traffic_weight` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `label` | string | No | - | The label to apply to the revision as a name prefix for routing traffic. |
| `latest_revision` | string | No | - | This traffic Weight relates to the latest stable Container Revision. |
| `revision_suffix` | string | No | - | The suffix string to which this 'traffic_weight' applies. |
| `percentage` | string | Yes | - | The percentage of traffic which should be sent this revision. |

### `registry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The hostname for the Container Registry. |
| `identity` | string | No | - | Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry. |
| `password_secret_name` | string | No | - | The name of the Secret Reference containing the password value for this user on the Container Registry, 'username' must also be supplied. |
| `username` | string | No | - | The username to use for this Container Registry, 'password_secret_name' must also be supplied.. |

### `template` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container` | list | Yes | - | One or more 'container' blocks as detailed below. |
| `max_replicas` | int | No | - | The maximum number of replicas for this container. |
| `min_replicas` | int | No | - | The minimum number of replicas for this container. |
| `azure_queue_scale_rule` | [block](#template-block-structure) | No | - | One or more 'azure_queue_scale_rule' blocks. |
| `custom_scale_rule` | [block](#template-block-structure) | No | - | One or more 'custom_scale_rule' blocks. |
| `http_scale_rule` | [block](#template-block-structure) | No | - | One or more 'http_scale_rule' blocks. |
| `tcp_scale_rule` | [block](#template-block-structure) | No | - | One or more 'tcp_scale_rule' blocks. |
| `revision_suffix` | string | No | - | The suffix for the revision. This value must be unique for the lifetime of the Resource. If omitted the service will use a hash function to create one. |
| `volume` | [block](#template-block-structure) | No | - | A 'volume' block as detailed below. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container App. | 
| **custom_domain_verification_id** | string | No  | The ID of the Custom Domain Verification for this Container App. | 
| **latest_revision_fqdn** | string | No  | The FQDN of the Latest Revision of the Container App. | 
| **latest_revision_name** | string | No  | The name of the latest Container Revision. | 
| **location** | string | No  | The location this Container App is deployed in. This is the same as the Environment in which it is deployed. | 
| **outbound_ip_addresses** | list | No  | A list of the Public IP Addresses which the Container App uses for outbound network access. | 

Additionally, all variables are provided as outputs.
