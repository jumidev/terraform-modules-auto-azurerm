# azurerm_spring_cloud_service

Manages an Azure Spring Cloud Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_service"   
}

inputs = {
   name = "Specifies the name of the Spring Cloud Service resource..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **container_registry** | [block](#container_registry-block-structure) |  -  |  -  |  One or more `container_registry` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **log_stream_public_endpoint_enabled** | bool |  -  |  -  |  Should the log stream in vnet injection instance could be accessed from Internet? | 
| **build_agent_pool_size** | string |  -  |  `S1`, `S2`, `S3`, `S4`, `S5`  |  Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **default_build_service** | [block](#default_build_service-block-structure) |  -  |  -  |  A `default_build_service` block. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **sku_name** | string |  `S0`  |  `B0`, `S0`, `E0`  |  Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created. | 
| **marketplace** | [block](#marketplace-block-structure) |  -  |  -  |  A `marketplace` block. Can only be specified when `sku` is set to `E0`. | 
| **network** | [block](#network-block-structure) |  -  |  -  |  A `network` block. Changing this forces a new resource to be created. | 
| **config_server_git_setting** | [block](#config_server_git_setting-block-structure) |  -  |  -  |  A `config_server_git_setting` block. This field is applicable only for Spring Cloud Service with basic and standard tier. | 
| **service_registry_enabled** | bool |  -  |  -  |  Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier. | 
| **trace** | [block](#trace-block-structure) |  -  |  -  |  A `trace` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **zone_redundant** | bool |  `False`  |  -  |  Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`. | 

### `container_registry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the container registry. |
| `username` | string | Yes | - | Specifies the username of the container registry. |
| `password` | string | Yes | - | Specifies the password of the container registry. |
| `server` | string | Yes | - | Specifies the login server of the container registry. |

### `trace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_string` | string | No | - | The connection string used for Application Insights. |
| `sample_rate` | string | No | 10.0 | The sampling rate of Application Insights Agent. Must be between '0.0' and '100.0'. Defaults to '10.0'. |

### `config_server_git_setting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `uri` | string | Yes | - | The URI of the default Git repository used as the Config Server back end, should be started with 'http://', 'https://', 'git@', or 'ssh://'. |
| `label` | string | No | - | The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository. |
| `search_paths` | string | No | - | An array of strings used to search subdirectories of the Git repository. |
| `http_basic_auth` | [block](#http_basic_auth-block-structure) | No | - | A 'http_basic_auth' block. |
| `ssh_auth` | [block](#ssh_auth-block-structure) | No | - | A 'ssh_auth' block. |
| `repository` | [block](#repository-block-structure) | No | - | One or more 'repository' blocks. |

### `http_basic_auth` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication. |
| `password` | string | Yes | - | The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication. |

### `network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `app_subnet_id` | string | Yes | - | Specifies the ID of the Subnet which should host the Spring Boot Applications deployed in this Spring Cloud Service. Changing this forces a new resource to be created. |
| `service_runtime_subnet_id` | string | Yes | - | Specifies the ID of the Subnet where the Service Runtime components of the Spring Cloud Service will exist. Changing this forces a new resource to be created. |
| `cidr_ranges` | list | Yes | - | A list of (at least 3) CIDR ranges (at least /16) which are used to host the Spring Cloud infrastructure, which must not overlap with any existing CIDR ranges in the Subnet. Changing this forces a new resource to be created. |
| `app_network_resource_group` | string | No | - | Specifies the Name of the resource group containing network resources of Azure Spring Cloud Apps. Changing this forces a new resource to be created. |
| `outbound_type` | string | No | loadBalancer | Specifies the egress traffic type of the Spring Cloud Service. Possible values are 'loadBalancer' and 'userDefinedRouting'. Defaults to 'loadBalancer'. Changing this forces a new resource to be created. |
| `read_timeout_seconds` | int | No | - | Ingress read time out in seconds. |
| `service_runtime_network_resource_group` | string | No | - | Specifies the Name of the resource group containing network resources of Azure Spring Cloud Service Runtime. Changing this forces a new resource to be created. |

### `repository` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name to identify on the Git repository, required only if repos exists. |
| `uri` | string | Yes | - | The URI of the Git repository that's used as the Config Server back end should be started with 'http://', 'https://', 'git@', or 'ssh://'. |
| `pattern` | string | No | - | An array of strings used to match an application name. For each pattern, use the '{application}/{profile}' format with wildcards. |
| `label` | string | No | - | The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository. |
| `search_paths` | string | No | - | An array of strings used to search subdirectories of the Git repository. |
| `http_basic_auth` | [block](#http_basic_auth-block-structure) | No | - | A 'http_basic_auth' block. |
| `ssh_auth` | [block](#ssh_auth-block-structure) | No | - | A 'ssh_auth' block. |

### `ssh_auth` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `private_key` | string | Yes | - | The SSH private key to access the Git repository, required when the URI starts with 'git@' or 'ssh://'. |
| `host_key` | string | No | - | The host key of the Git repository server, should not include the algorithm prefix as covered by 'host-key-algorithm'. |
| `host_key_algorithm` | string | No | - | The host key algorithm, should be 'ssh-dss', 'ssh-rsa', 'ecdsa-sha2-nistp256', 'ecdsa-sha2-nistp384', or 'ecdsa-sha2-nistp521'. Required only if 'host-key' exists. |
| `strict_host_key_checking_enabled` | bool | No | True | Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to 'true'. |

### `marketplace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `plan` | string | Yes | - | Specifies the plan ID of the 3rd Party Artifact that is being procured. |
| `publisher` | string | Yes | - | Specifies the publisher ID of the 3rd Party Artifact that is being procured. |
| `product` | string | Yes | - | Specifies the 3rd Party artifact that is being procured. |

### `default_build_service` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_registry_name` | string | No | - | Specifies the name of the container registry used in the default build service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Service. | 
| **service_registry_id** | string | No  | The ID of the Spring Cloud Service Registry. | 
| **outbound_public_ip_addresses** | list | No  | A list of the outbound Public IP Addresses used by this Spring Cloud Service. | 
| **required_network_traffic_rules** | block | No  | A list of `required_network_traffic_rules` blocks. | 
| **direction** | string | No  | The direction of required traffic. Possible values are `Inbound`, `Outbound`. | 
| **fqdns** | string | No  | The FQDN list of required traffic. | 
| **ip_addresses** | string | No  | The IP list of required traffic. | 
| **port** | string | No  | The port of required traffic. | 
| **protocol** | string | No  | The protocol of required traffic. | 

Additionally, all variables are provided as outputs.
