# azurerm_arc_kubernetes_flux_configuration

Manages an Arc Kubernetes Flux Configuration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **var.cluster_id** | string | True | -  |  -  | Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.kustomizations** | block | True | -  |  -  | A `kustomizations` block. | 
| **var.namespace** | string | True | -  |  -  | Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **var.blob_storage** | block | False | -  |  -  | An `blob_storage` block. | 
| **var.bucket** | block | False | -  |  -  | A `bucket` block. | 
| **var.git_repository** | block | False | -  |  -  | A `git_repository` block. | 
| **var.scope** | string | False | `namespace`  |  `cluster`, `namespace`  | Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **var.continuous_reconciliation_enabled** | bool | False | `True`  |  -  | Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cluster_id** | string  | - | 
| **kustomizations** | block  | - | 
| **namespace** | string  | - | 
| **blob_storage** | block  | - | 
| **bucket** | block  | - | 
| **git_repository** | block  | - | 
| **scope** | string  | - | 
| **continuous_reconciliation_enabled** | bool  | - | 
| **id** | string  | The ID of the Arc Kubernetes Flux Configuration. | 