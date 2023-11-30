# azurerm_spring_cloud_gateway

-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.Manages a Spring Cloud Gateway.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is `default`. | 
| **var.spring_cloud_service_id** | string | True | -  |  -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created. | 
| **var.api_metadata** | block | False | -  |  -  |  A `api_metadata` block. | 
| `api_metadata` block structure: || 
|   description (string): Detailed description of the APIs available on the Gateway instance. ||
|   documentation_url (string): Location of additional documentation for the APIs available on the Gateway instance. ||
|   server_url (string): Base URL that API consumers will use to access APIs on the Gateway instance. ||
|   title (string): Specifies the title describing the context of the APIs available on the Gateway instance. ||
|   version (string): Specifies the version of APIs available on this Gateway instance. ||
| **var.application_performance_monitoring_types** | string | False | -  |  `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM`, `NewRelic`  |  Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are `AppDynamics`, `ApplicationInsights`, `Dynatrace`, `ElasticAPM` and `NewRelic`. | 
| **var.client_authorization** | block | False | -  |  -  |  A `client_authorization` block. | 
| `client_authorization` block structure: || 
|   certificate_ids (string): Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway. ||
|   verification_enabled (bool): Specifies whether the client certificate verification is enabled. ||
| **var.cors** | block | False | -  |  -  |  A `cors` block. | 
| `cors` block structure: || 
|   credentials_allowed (bool): is user credentials are supported on cross-site requests? ||
|   allowed_headers (string): Allowed headers in cross-site requests. The special value '*' allows actual requests to send any header. ||
|   allowed_methods (string): Allowed HTTP methods on cross-site requests. The special value '*' allows all methods. If not set, 'GET' and 'HEAD' are allowed by default. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS' and 'PUT'. ||
|   allowed_origins (string): Allowed origins to make cross-site requests. The special value '*' allows all domains. ||
|   allowed_origin_patterns (string): Allowed origin patterns to make cross-site requests. ||
|   exposed_headers (string): HTTP response headers to expose for cross-site requests. ||
|   max_age_seconds (int): How long, in seconds, the response from a pre-flight request can be cached by clients. ||
| **var.environment_variables** | string | False | -  |  -  |  Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.https_only** | string | False | -  |  -  |  is only https is allowed? | 
| **var.instance_count** | int | False | `1`  |  -  |  Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between `1` and `500`. Defaults to `1` if not specified. | 
| **var.public_network_access_enabled** | bool | False | -  |  -  |  Indicates whether the Spring Cloud Gateway exposes endpoint. | 
| **var.quota** | block | False | -  |  -  |  A `quota` block. | 
| `quota` block structure: || 
|   cpu (string): Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified. ||
|   memory (string): Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '2Gi' if not specified. ||
| **var.sensitive_environment_variables** | string | False | -  |  -  |  Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created. | 
| **var.sso** | block | False | -  |  -  |  A `sso` block. | 
| `sso` block structure: || 
|   client_id (string): The public identifier for the application. ||
|   client_secret (string): The secret known only to the application and the authorization server. ||
|   issuer_uri (string): The URI of Issuer Identifier. ||
|   scope (string): It defines the specific actions applications can be allowed to do on a user's behalf. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Gateway. | 
| **url** | string | No  | URL of the Spring Cloud Gateway, exposed when 'public_network_access_enabled' is true. | 

Additionally, all variables are provided as outputs.
