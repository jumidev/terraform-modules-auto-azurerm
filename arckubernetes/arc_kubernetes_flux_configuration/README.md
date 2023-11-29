# azurerm_arc_kubernetes_flux_configuration

Manages an Arc Kubernetes Flux Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **cluster_id** | string | True | -  |  -  | Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **kustomizations** | block | True | -  |  -  | A `kustomizations` block. | 
| **namespace** | string | True | -  |  -  | Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **blob_storage** | block | False | -  |  -  | An `blob_storage` block. | 
| **bucket** | block | False | -  |  -  | A `bucket` block. | 
| **git_repository** | block | False | -  |  -  | A `git_repository` block. | 
| **scope** | string | False | `namespace`  |  `cluster`, `namespace`  | Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created. | 
| **continuous_reconciliation_enabled** | bool | False | `True`  |  -  | Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`. | 

