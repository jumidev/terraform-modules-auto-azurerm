# azurerm_arc_kubernetes_flux_configuration

Manages an Arc Kubernetes Flux Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "arckubernetes/arc_kubernetes_flux_configuration" 
}

inputs = {
   name = "name of arc_kubernetes_flux_configuration" 
   cluster_id = "cluster_id of arc_kubernetes_flux_configuration" 
   kustomizations = {
      example_kustomizations = {
      }
  
   }
 
   namespace = "namespace of arc_kubernetes_flux_configuration" 
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
| **var.name** | string |  Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **var.cluster_id** | string |  Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.kustomizations** | [block](#kustomizations-block-structure) |  A `kustomizations` block. | 
| **var.namespace** | string |  Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.blob_storage** | [block](#blob_storage-block-structure) |  -  |  -  |  An `blob_storage` block. | 
| **var.bucket** | [block](#bucket-block-structure) |  -  |  -  |  A `bucket` block. | 
| **var.git_repository** | [block](#git_repository-block-structure) |  -  |  -  |  A `git_repository` block. | 
| **var.scope** | string |  `namespace`  |  `cluster`, `namespace`  |  Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **var.continuous_reconciliation_enabled** | bool |  `True`  |  -  |  Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`. | 

### `kustomizations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | No | - | Specifies the path in the source reference to reconcile on the cluster. |
| `timeout_in_seconds` | int | No | 600 | The maximum time to attempt to reconcile the kustomization on the cluster. Defaults to '600'. |
| `sync_interval_in_seconds` | int | No | 600 | The interval at which to re-reconcile the kustomization on the cluster. Defaults to '600'. |
| `retry_interval_in_seconds` | int | No | 600 | The interval at which to re-reconcile the kustomization on the cluster in the event of failure on reconciliation. Defaults to '600'. |
| `recreating_enabled` | bool | No | False | Whether re-creating Kubernetes resources on the cluster is enabled when patching fails due to an immutable field change. Defaults to 'false'. |
| `garbage_collection_enabled` | bool | No | False | Whether garbage collections of Kubernetes objects created by this kustomization is enabled. Defaults to 'false'. |
| `depends_on` | string | No | - | Specifies other kustomizations that this kustomization depends on. This kustomization will not reconcile until all dependencies have completed their reconciliation. |

### `blob_storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_id` | string | Yes | - | Specifies the Azure Blob container ID. |
| `account_key` | string | No | - | Specifies the account key (shared key) to access the storage account. |
| `local_auth_reference` | string | No | - | Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. |
| `sas_token` | string | No | - | Specifies the shared access token to access the storage container. |
| `service_principal` | block | No | - | A 'service_principal' block. |
| `sync_interval_in_seconds` | int | No | - | Specifies the interval at which to re-reconcile the cluster Azure Blob source with the remote. |
| `timeout_in_seconds` | int | No | - | Specifies the maximum time to attempt to reconcile the cluster Azure Blob source with the remote. |

### `bucket` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `bucket_name` | string | Yes | - | Specifies the bucket name to sync from the url endpoint for the flux configuration. |
| `url` | string | Yes | - | Specifies the URL to sync for the flux configuration S3 bucket. It must start with 'http://' or 'https://'. |
| `access_key` | string | No | - | Specifies the plaintext access key used to securely access the S3 bucket. |
| `secret_key_base64` | string | No | - | Specifies the Base64-encoded secret key used to authenticate with the bucket source. |
| `tls_enabled` | bool | No | True | Specify whether to communicate with a bucket using TLS is enabled. Defaults to 'true'. |
| `local_auth_reference` | string | No | - | Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. |
| `sync_interval_in_seconds` | int | No | 600 | Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to '600'. |
| `timeout_in_seconds` | int | No | 600 | Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to '600'. |

### `git_repository` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | Specifies the URL to sync for the flux configuration git repository. It must start with 'http://', 'https://', 'git@' or 'ssh://'. |
| `reference_type` | string | Yes | - | Specifies the source reference type for the GitRepository object. Possible values are 'branch', 'commit', 'semver' and 'tag'. |
| `reference_value` | string | Yes | - | Specifies the source reference value for the GitRepository object. |
| `https_ca_cert_base64` | string | No | - | Specifies the Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS. |
| `https_user` | string | No | - | Specifies the plaintext HTTPS username used to access private git repositories over HTTPS. |
| `https_key_base64` | string | No | - | Specifies the Base64-encoded HTTPS personal access token or password that will be used to access the repository. |
| `local_auth_reference` | string | No | - | Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number. |
| `ssh_private_key_base64` | string | No | - | Specifies the Base64-encoded SSH private key in PEM format. |
| `ssh_known_hosts_base64` | string | No | - | Specifies the Base64-encoded known_hosts value containing public SSH keys required to access private git repositories over SSH. |
| `sync_interval_in_seconds` | int | No | 600 | Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to '600'. |
| `timeout_in_seconds` | int | No | 600 | Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to '600'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Arc Kubernetes Flux Configuration. | 

Additionally, all variables are provided as outputs.
