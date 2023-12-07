# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Service Fabric Cluster. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "reliability_level" {
  description = "(REQUIRED) Specifies the Reliability Level of the Cluster. Possible values include 'None', 'Bronze', 'Silver', 'Gold' and 'Platinum'."
  type        = string

}
variable "management_endpoint" {
  description = "(REQUIRED) Specifies the Management Endpoint of the cluster such as 'http://example.com'. Changing this forces a new resource to be created."
  type        = string

}
variable "node_type" {
  description = "(REQUIRED) One or more 'node_type' blocks."
  type        = map(map(any))
}
#
# node_type block structure           :
#   name (string)                       : (REQUIRED) The name of the Node Type.
#   placement_properties (string)       : The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
#   capacities (string)                 : The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
#   instance_count (int)                : (REQUIRED) The number of nodes for this Node Type.
#   is_primary (bool)                   : (REQUIRED) Is this the Primary Node Type?
#   is_stateless (string)               : Should this node type run only stateless services?
#   multiple_availability_zones (string): Does this node type span availability zones?
#   client_endpoint_port (string)       : (REQUIRED) The Port used for the Client Endpoint for this Node Type.
#   http_endpoint_port (string)         : (REQUIRED) The Port used for the HTTP Endpoint for this Node Type.
#   durability_level (string)           : The Durability Level for this Node Type. Possible values include 'Bronze', 'Gold' and 'Silver'. Defaults to 'Bronze'.
#   application_ports (block)           : A 'application_ports' block.
#   ephemeral_ports (block)             : A 'ephemeral_ports' block.
#   reverse_proxy_endpoint_port (string): The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster.
#
# ephemeral_ports block structure:
#   start_port (string)            : (REQUIRED) The start of the Ephemeral Port Range on this Node Type.
#   end_port (string)              : (REQUIRED) The end of the Ephemeral Port Range on this Node Type.
#
# application_ports block structure:
#   start_port (string)              : (REQUIRED) The start of the Application Port Range on this Node Type.
#   end_port (string)                : (REQUIRED) The end of the Application Port Range on this Node Type.


variable "upgrade_mode" {
  description = "(REQUIRED) Specifies the Upgrade Mode of the cluster. Possible values are 'Automatic' or 'Manual'."
  type        = string

}
variable "vm_image" {
  description = "(REQUIRED) Specifies the Image expected for the Service Fabric Cluster, such as 'Windows'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "cluster_code_version" {
  description = "Required if Upgrade Mode set to 'Manual', Specifies the Version of the Cluster Code of the cluster."
  type        = string
  default     = null
}
variable "add_on_features" {
  description = "A List of one or more features which should be enabled, such as 'DnsService'."
  type        = list(any)
  default     = []
}
variable "azure_active_directory" {
  description = "An 'azure_active_directory' block."
  type        = map(any)
  default     = null
}
#
# azure_active_directory block structure:
#   tenant_id (string)                    : (REQUIRED) The Azure Active Directory Tenant ID.
#   cluster_application_id (string)       : (REQUIRED) The Azure Active Directory Cluster Application ID.
#   client_application_id (string)        : (REQUIRED) The Azure Active Directory Client ID which should be used for the Client Application.


variable "certificate_common_names" {
  description = "A 'certificate_common_names' block. Conflicts with 'certificate'."
  type        = map(any)
  default     = null
}
#
# certificate_common_names block structure:
#   common_names (block)                    : (REQUIRED) A 'common_names' block.
#   x509_store_name (string)                : (REQUIRED) The X509 Store where the Certificate Exists, such as 'My'.
#
# common_names block structure          :
#   certificate_common_name (string)      : (REQUIRED) The common or subject name of the certificate.
#   certificate_issuer_thumbprint (string): The Issuer Thumbprint of the Certificate.


variable "certificate" {
  description = "A 'certificate' block. Conflicts with 'certificate_common_names'."
  type        = map(any)
  default     = null
}
#
# certificate block structure  :
#   thumbprint (string)          : (REQUIRED) The Thumbprint of the Certificate.
#   thumbprint_secondary (string): The Secondary Thumbprint of the Certificate.
#   x509_store_name (string)     : (REQUIRED) The X509 Store where the Certificate Exists, such as 'My'.


variable "reverse_proxy_certificate" {
  description = "A 'reverse_proxy_certificate' block. Conflicts with 'reverse_proxy_certificate_common_names'."
  type        = map(any)
  default     = null
}
#
# reverse_proxy_certificate block structure:
#   thumbprint (string)                      : (REQUIRED) The Thumbprint of the Certificate.
#   thumbprint_secondary (string)            : The Secondary Thumbprint of the Certificate.
#   x509_store_name (string)                 : (REQUIRED) The X509 Store where the Certificate Exists, such as 'My'.


variable "reverse_proxy_certificate_common_names" {
  description = "A 'reverse_proxy_certificate_common_names' block. Conflicts with 'reverse_proxy_certificate'."
  type        = map(any)
  default     = null
}
#
# reverse_proxy_certificate_common_names block structure:
#   common_names (block)                                  : (REQUIRED) A 'common_names' block.
#   x509_store_name (string)                              : (REQUIRED) The X509 Store where the Certificate Exists, such as 'My'.
#
# common_names block structure          :
#   certificate_common_name (string)      : (REQUIRED) The common or subject name of the certificate.
#   certificate_issuer_thumbprint (string): The Issuer Thumbprint of the Certificate.


variable "client_certificate_thumbprint" {
  description = "One or more 'client_certificate_thumbprint' blocks."
  type        = map(map(any))
  default     = null
}
#
# client_certificate_thumbprint block structure:
#   thumbprint (string)                          : (REQUIRED) The Thumbprint associated with the Client Certificate.
#   is_admin (string)                            : (REQUIRED) Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.


variable "client_certificate_common_name" {
  description = "A 'client_certificate_common_name' block."
  type        = map(any)
  default     = null
}
#
# client_certificate_common_name block structure:
#   common_name (string)                          : (REQUIRED) The common or subject name of the certificate.
#   issuer_thumbprint (string)                    : The Issuer Thumbprint of the Certificate.
#   is_admin (string)                             : (REQUIRED) Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster.


variable "diagnostics_config" {
  description = "A 'diagnostics_config' block."
  type        = map(any)
  default     = null
}
#
# diagnostics_config block structure :
#   storage_account_name (string)      : (REQUIRED) The name of the Storage Account where the Diagnostics should be sent to.
#   protected_account_key_name (string): (REQUIRED) The protected diagnostics storage key name, such as 'StorageAccountKey1'.
#   blob_endpoint (string)             : (REQUIRED) The Blob Endpoint of the Storage Account.
#   queue_endpoint (string)            : (REQUIRED) The Queue Endpoint of the Storage Account.
#   table_endpoint (string)            : (REQUIRED) The Table Endpoint of the Storage Account.


variable "fabric_settings" {
  description = "One or more 'fabric_settings' blocks."
  type        = map(map(any))
  default     = null
}
#
# fabric_settings block structure:
#   name (string)                  : (REQUIRED) The name of the Fabric Setting, such as 'Security' or 'Federation'.
#   parameters (string)            : A map containing settings for the specified Fabric Setting.


variable "upgrade_policy" {
  description = "A 'upgrade_policy' block."
  type        = map(any)
  default     = null
}
#
# upgrade_policy block structure            :
#   force_restart_enabled (bool)              : Indicates whether to restart the Service Fabric node even if only dynamic configurations have changed.
#   health_check_retry_timeout (string)       : Specifies the duration, in 'hh:mm:ss' string format, after which Service Fabric retries the health check if the previous health check fails. Defaults to '00:45:00'.
#   health_check_stable_duration (string)     : Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits in order to verify that the cluster is stable before it continues to the next upgrade domain or completes the upgrade. This wait duration prevents undetected changes of health right after the health check is performed. Defaults to '00:01:00'.
#   health_check_wait_duration (string)       : Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain. Defaults to '00:00:30'.
#   upgrade_domain_timeout (string)           : Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails. Defaults to '02:00:00'.
#   upgrade_replica_set_check_timeout (string): Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits for a replica set to reconfigure into a safe state, if it is not already in a safe state, before Service Fabric proceeds with the upgrade. Defaults to '10675199.02:48:05.4775807'.
#   upgrade_timeout (string)                  : Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails. Defaults to '12:00:00'.
#   health_policy (block)                     : A 'health_policy' block
#   delta_health_policy (block)               : A 'delta_health_policy' block
#
# delta_health_policy block structure                      :
#   max_delta_unhealthy_applications_percent (string)        : Specifies the maximum tolerated percentage of delta unhealthy applications that can have aggregated health states of error. If the current unhealthy applications do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'.
#   max_delta_unhealthy_nodes_percent (string)               : Specifies the maximum tolerated percentage of delta unhealthy nodes that can have aggregated health states of error. If the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'.
#   max_upgrade_domain_delta_unhealthy_nodes_percent (string): Specifies the maximum tolerated percentage of upgrade domain delta unhealthy nodes that can have aggregated health state of error. If there is any upgrade domain where the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'.
#
# health_policy block structure              :
#   max_unhealthy_applications_percent (string): Specifies the maximum tolerated percentage of applications that can have aggregated health state of error. If the upgrade exceeds this percentage, the cluster is unhealthy. Defaults to '0'.
#   max_unhealthy_nodes_percent (string)       : Specifies the maximum tolerated percentage of nodes that can have aggregated health states of error. If an upgrade exceeds this percentage, the cluster is unhealthy. Defaults to '0'.


variable "service_fabric_zonal_upgrade_mode" {
  description = "Specifies the logical grouping of VMs in upgrade domains. Possible values are 'Hierarchical' or 'Parallel'."
  type        = string
  default     = null
}
variable "vmss_zonal_upgrade_mode" {
  description = "Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are 'Hierarchical' or 'Parallel'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
