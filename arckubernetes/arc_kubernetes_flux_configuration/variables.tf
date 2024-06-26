# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created."
  type        = string

}
variable "cluster_id" {
  description = "(REQUIRED) Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created."
  type        = string

}
variable "kustomizations" {
  description = "(REQUIRED) A 'kustomizations' block."
  type        = map(any)
}
#
# kustomizations block structure    :
#   name (string)                     : (REQUIRED) Specifies the name of the kustomization.
#   path (string)                     : Specifies the path in the source reference to reconcile on the cluster.
#   timeout_in_seconds (number)       : The maximum time to attempt to reconcile the kustomization on the cluster. Defaults to '600'.
#   sync_interval_in_seconds (number) : The interval at which to re-reconcile the kustomization on the cluster. Defaults to '600'.
#   retry_interval_in_seconds (number): The interval at which to re-reconcile the kustomization on the cluster in the event of failure on reconciliation. Defaults to '600'.
#   recreating_enabled (bool)         : Whether re-creating Kubernetes resources on the cluster is enabled when patching fails due to an immutable field change. Defaults to 'false'.
#   garbage_collection_enabled (bool) : Whether garbage collections of Kubernetes objects created by this kustomization is enabled. Defaults to 'false'.
#   depends_on (string)               : Specifies other kustomizations that this kustomization depends on. This kustomization will not reconcile until all dependencies have completed their reconciliation.


variable "namespace" {
  description = "(REQUIRED) Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "blob_storage" {
  description = "An 'blob_storage' block."
  type        = map(any)
  default     = null
}
#
# blob_storage block structure     :
#   container_id (string)            : (REQUIRED) Specifies the Azure Blob container ID.
#   account_key (string)             : Specifies the account key (shared key) to access the storage account.
#   local_auth_reference (string)    : Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
#   sas_token (string)               : Specifies the shared access token to access the storage container.
#   service_principal (block)        : A 'service_principal' block.
#   sync_interval_in_seconds (number): Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote.
#   timeout_in_seconds (number)      : Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote.
#
# service_principal block structure     :
#   client_id (string)                    : (REQUIRED) Specifies the client ID for authenticating a Service Principal.
#   tenant_id (string)                    : (REQUIRED) Specifies the tenant ID for authenticating a Service Principal.
#   client_certificate_base64 (string)    : Base64-encoded certificate used to authenticate a Service Principal .
#   client_certificate_password (string)  : Specifies the password for the certificate used to authenticate a Service Principal .
#   client_certificate_send_chain (string): Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate.
#   client_secret (string)                : Specifies the client secret for authenticating a Service Principal.


variable "bucket" {
  description = "A 'bucket' block."
  type        = map(any)
  default     = null
}
#
# bucket block structure           :
#   bucket_name (string)             : (REQUIRED) Specifies the bucket name to sync from the url endpoint for the flux configuration.
#   url (string)                     : (REQUIRED) Specifies the URL to sync for the flux configuration S3 bucket. It must start with 'http://' or 'https://'.
#   access_key (string)              : Specifies the plaintext access key used to securely access the S3 bucket.
#   secret_key_base64 (string)       : Specifies the Base64-encoded secret key used to authenticate with the bucket source.
#   tls_enabled (bool)               : Specify whether to communicate with a bucket using TLS is enabled. Defaults to 'true'.
#   local_auth_reference (string)    : Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
#   sync_interval_in_seconds (number): Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to '600'.
#   timeout_in_seconds (number)      : Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to '600'.


variable "git_repository" {
  description = "A 'git_repository' block."
  type        = map(any)
  default     = null
}
#
# git_repository block structure   :
#   url (string)                     : (REQUIRED) Specifies the URL to sync for the flux configuration git repository. It must start with 'http://', 'https://', 'git@' or 'ssh://'.
#   reference_type (string)          : (REQUIRED) Specifies the source reference type for the GitRepository object. Possible values are 'branch', 'commit', 'semver' and 'tag'.
#   reference_value (string)         : (REQUIRED) Specifies the source reference value for the GitRepository object.
#   https_ca_cert_base64 (string)    : Specifies the Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS.
#   https_user (string)              : Specifies the plaintext HTTPS username used to access private git repositories over HTTPS.
#   https_key_base64 (string)        : Specifies the Base64-encoded HTTPS personal access token or password that will be used to access the repository.
#   local_auth_reference (string)    : Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number.
#   ssh_private_key_base64 (string)  : Specifies the Base64-encoded SSH private key in PEM format.
#   ssh_known_hosts_base64 (string)  : Specifies the Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH.
#   sync_interval_in_seconds (number): Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to '600'.
#   timeout_in_seconds (number)      : Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to '600'.


variable "scope" {
  description = "Specifies the scope at which the operator will be installed. Possible values are 'cluster' and 'namespace'. Defaults to 'namespace'. Changing this forces a new Arc Kubernetes Flux Configuration to be created."
  type        = string
  default     = "namespace"
}
variable "continuous_reconciliation_enabled" {
  description = "Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to 'true'."
  type        = bool
  default     = true
}
