# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "container_registry" {
  description = "One or more 'container_registry' block. This field is applicable only for Spring Cloud Service with enterprise tier."
  type        = map(any)
  default     = null
}
#
# container_registry block structure:
#   name (string)                     : (REQUIRED) Specifies the name of the container registry.
#   username (string)                 : (REQUIRED) Specifies the username of the container registry.
#   password (string)                 : (REQUIRED) Specifies the password of the container registry.
#   server (string)                   : (REQUIRED) Specifies the login server of the container registry.


variable "log_stream_public_endpoint_enabled" {
  description = "Should the log stream in vnet injection instance could be accessed from Internet?"
  type        = bool
  default     = null
}
variable "build_agent_pool_size" {
  description = "Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are 'S1', 'S2', 'S3', 'S4' and 'S5'. This field is applicable only for Spring Cloud Service with enterprise tier."
  type        = string
  default     = null
}
variable "default_build_service" {
  description = "A 'default_build_service' block. This field is applicable only for Spring Cloud Service with enterprise tier."
  type        = map(any)
  default     = null
}
#
# default_build_service block structure:
#   container_registry_name (string)     : Specifies the name of the container registry used in the default build service.


variable "sku_name" {
  description = "Specifies the SKU Name for this Spring Cloud Service. Possible values are 'B0', 'S0' and 'E0'. Defaults to 'S0'. Changing this forces a new resource to be created."
  type        = string
  default     = "S0"
}
variable "marketplace" {
  description = "A 'marketplace' block. Can only be specified when 'sku' is set to 'E0'."
  type        = map(any)
  default     = null
}
#
# marketplace block structure:
#   plan (string)              : (REQUIRED) Specifies the plan ID of the 3rd Party Artifact that is being procured.
#   publisher (string)         : (REQUIRED) Specifies the publisher ID of the 3rd Party Artifact that is being procured.
#   product (string)           : (REQUIRED) Specifies the 3rd Party artifact that is being procured.


variable "network" {
  description = "A 'network' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# network block structure                        :
#   app_subnet_id (string)                         : (REQUIRED) Specifies the ID of the Subnet which should host the Spring Boot Applications deployed in this Spring Cloud Service. Changing this forces a new resource to be created.
#   service_runtime_subnet_id (string)             : (REQUIRED) Specifies the ID of the Subnet where the Service Runtime components of the Spring Cloud Service will exist. Changing this forces a new resource to be created.
#   cidr_ranges (list)                             : (REQUIRED) A list of (at least 3) CIDR ranges (at least /16) which are used to host the Spring Cloud infrastructure, which must not overlap with any existing CIDR ranges in the Subnet. Changing this forces a new resource to be created.
#   app_network_resource_group (string)            : Specifies the Name of the resource group containing network resources of Azure Spring Cloud Apps. Changing this forces a new resource to be created.
#   outbound_type (string)                         : Specifies the egress traffic type of the Spring Cloud Service. Possible values are 'loadBalancer' and 'userDefinedRouting'. Defaults to 'loadBalancer'. Changing this forces a new resource to be created.
#   read_timeout_seconds (number)                  : Ingress read time out in seconds.
#   service_runtime_network_resource_group (string): Specifies the Name of the resource group containing network resources of Azure Spring Cloud Service Runtime. Changing this forces a new resource to be created.


variable "config_server_git_setting" {
  description = "A 'config_server_git_setting' block. This field is applicable only for Spring Cloud Service with basic and standard tier."
  type        = map(any)
  default     = null
}
#
# config_server_git_setting block structure:
#   uri (string)                             : (REQUIRED) The URI of the default Git repository used as the Config Server back end, should be started with 'http://', 'https://', 'git@', or 'ssh://'.
#   label (string)                           : The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
#   search_paths (string)                    : An array of strings used to search subdirectories of the Git repository.
#   http_basic_auth (block)                  : A 'http_basic_auth' block.
#   ssh_auth (block)                         : A 'ssh_auth' block.
#   repository (block)                       : One or more 'repository' blocks.
#
# http_basic_auth block structure:
#   username (string)              : (REQUIRED) The username that's used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
#   password (string)              : (REQUIRED) The password used to access the Git repository server, required when the Git repository server supports HTTP Basic Authentication.
#
# ssh_auth block structure               :
#   private_key (string)                   : (REQUIRED) The SSH private key to access the Git repository, required when the URI starts with 'git@' or 'ssh://'.
#   host_key (string)                      : The host key of the Git repository server, should not include the algorithm prefix as covered by 'host-key-algorithm'.
#   host_key_algorithm (string)            : The host key algorithm, should be 'ssh-dss', 'ssh-rsa', 'ecdsa-sha2-nistp256', 'ecdsa-sha2-nistp384', or 'ecdsa-sha2-nistp521'. Required only if 'host-key' exists.
#   strict_host_key_checking_enabled (bool): Indicates whether the Config Server instance will fail to start if the host_key does not match. Defaults to 'true'.
#
# repository block structure:
#   name (string)             : (REQUIRED) A name to identify on the Git repository, required only if repos exists.
#   uri (string)              : (REQUIRED) The URI of the Git repository that's used as the Config Server back end should be started with 'http://', 'https://', 'git@', or 'ssh://'.
#   pattern (string)          : An array of strings used to match an application name. For each pattern, use the '{application}/{profile}' format with wildcards.
#   label (string)            : The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
#   search_paths (string)     : An array of strings used to search subdirectories of the Git repository.
#   http_basic_auth (block)   : A 'http_basic_auth' block.
#   ssh_auth (block)          : A 'ssh_auth' block.


variable "service_registry_enabled" {
  description = "Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier."
  type        = bool
  default     = null
}
variable "trace" {
  description = "A 'trace' block."
  type        = map(any)
  default     = null
}
#
# trace block structure     :
#   connection_string (string): The connection string used for Application Insights.
#   sample_rate (string)      : The sampling rate of Application Insights Agent. Must be between '0.0' and '100.0'. Defaults to '10.0'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zone_redundant" {
  description = "Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to 'false'."
  type        = bool
  default     = false
}
