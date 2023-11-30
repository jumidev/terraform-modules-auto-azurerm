# azurerm_spring_cloud_gateway

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Gateway.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_gateway" 
}

inputs = {
   name = "name of spring_cloud_gateway" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_gateway" 
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
| **var.name** | string |  The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.api_metadata** | [block](#api_metadata-block-structure) |  -  |  -  |  A `api_metadata` block. | 
| **var.application_performance_monitoring_types** | string |  -  |  `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  |  Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **var.client_authorization** | [block](#client_authorization-block-structure) |  -  |  -  |  A `client_authorization` block. | 
| **var.cors** | [block](#cors-block-structure) |  -  |  -  |  A `cors` block. | 
| **var.environment_variables** | string |  -  |  -  |  Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.https_only** | string |  -  |  -  |  is only https is allowed? | 
| **var.instance_count** | int |  `1`  |  -  |  Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.public_network_access_enabled** | bool |  -  |  -  |  Indicates whether the Spring Cloud Gateway exposes endpoint. | 
| **var.quota** | [block](#quota-block-structure) |  -  |  -  |  A `quota` block. | 
| **var.sensitive_environment_variables** | string |  -  |  -  |  Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.sso** | [block](#sso-block-structure) |  -  |  -  |  A `sso` block. | 

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `credentials_allowed` | bool | No | - | is user credentials are supported on cross-site requests? |
| `allowed_headers` | string | No | - | Allowed headers in cross-site requests. The special value '*' allows actual requests to send any header. |
| `allowed_methods` | string | No | - | Allowed HTTP methods on cross-site requests. The special value '*' allows all methods. If not set, 'GET' and 'HEAD' are allowed by default. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS' and 'PUT'. |
| `allowed_origins` | string | No | - | Allowed origins to make cross-site requests. The special value '*' allows all domains. |
| `allowed_origin_patterns` | string | No | - | Allowed origin patterns to make cross-site requests. |
| `exposed_headers` | string | No | - | HTTP response headers to expose for cross-site requests. |
| `max_age_seconds` | int | No | - | How long, in seconds, the response from a pre-flight request can be cached by clients. |

### `quota` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cpu` | string | No | 1 | Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified. |
| `memory` | string | No | 2Gi | Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '2Gi' if not specified. |

### `api_metadata` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description` | string | No | - | Detailed description of the APIs available on the Gateway instance. |
| `documentation_url` | string | No | - | Location of additional documentation for the APIs available on the Gateway instance. |
| `server_url` | string | No | - | Base URL that API consumers will use to access APIs on the Gateway instance. |
| `title` | string | No | - | Specifies the title describing the context of the APIs available on the Gateway instance. |
| `version` | string | No | - | Specifies the version of APIs available on this Gateway instance. |

### `sso` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `client_id` | string | No | - | The public identifier for the application. |
| `client_secret` | string | No | - | The secret known only to the application and the authorization server. |
| `issuer_uri` | string | No | - | The URI of Issuer Identifier. |
| `scope` | string | No | - | It defines the specific actions applications can be allowed to do on a user's behalf. |

### `client_authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_ids` | string | No | - | Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway. |
| `verification_enabled` | bool | No | - | Specifies whether the client certificate verification is enabled. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Gateway. | 
| **url** | string | No  | URL of the Spring Cloud Gateway, exposed when 'public_network_access_enabled' is true. | 

Additionally, all variables are provided as outputs.
