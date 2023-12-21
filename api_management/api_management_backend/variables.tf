# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the API Management backend. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where this backend should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "protocol" {
  description = "(REQUIRED) The protocol used by the backend host. Possible values are 'http' or 'soap'."
  type        = string

}
variable "url" {
  description = "(REQUIRED) The URL of the backend host."
  type        = string

}

# OPTIONAL VARIABLES

variable "credentials" {
  description = "A 'credentials' block."
  type        = map(any)
  default     = null
}
#
# credentials block structure:
#   authorization (block)      : An 'authorization' block.
#   certificate (list)         : A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.
#   header (string)            : A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.
#   query (string)             : A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.
#
# authorization block structure:
#   parameter (string)           : The authentication Parameter value.
#   scheme (string)              : The authentication Scheme name.


variable "description" {
  description = "The description of the backend."
  type        = string
  default     = null
}
variable "proxy" {
  description = "A 'proxy' block."
  type        = map(any)
  default     = null
}
#
# proxy block structure:
#   password (string)    : The password to connect to the proxy server.
#   url (string)         : (REQUIRED) The URL of the proxy server.
#   username (string)    : (REQUIRED) The username to connect to the proxy server.


variable "resource_id" {
  description = "The management URI of the backend host in an external system. This URI can be the ARM Resource ID of Logic Apps, Function Apps or API Apps, or the management endpoint of a Service Fabric cluster."
  type        = string
  default     = null
}
variable "service_fabric_cluster" {
  description = "A 'service_fabric_cluster' block."
  type        = map(any)
  default     = null
}
#
# service_fabric_cluster block structure   :
#   client_certificate_thumbprint (string)   : The client certificate thumbprint for the management endpoint.
#   client_certificate_id (string)           : The client certificate resource id for the management endpoint.
#   management_endpoints (list)              : (REQUIRED) A list of cluster management endpoints.
#   max_partition_resolution_retries (number): (REQUIRED) The maximum number of retries when attempting resolve the partition.
#   server_certificate_thumbprints (list)    : A list of thumbprints of the server certificates of the Service Fabric cluster.
#   server_x509_name (string)                : One or more 'server_x509_name' blocks.


variable "title" {
  description = "The title of the backend."
  type        = string
  default     = null
}
variable "tls" {
  description = "A 'tls' block."
  type        = map(any)
  default     = null
}
#
# tls block structure                :
#   validate_certificate_chain (string): Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host.
#   validate_certificate_name (string) : Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host.


variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
