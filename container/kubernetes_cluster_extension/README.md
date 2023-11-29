# azurerm_kubernetes_cluster_extension

Manages a Kubernetes Cluster Extension.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.cluster_id** | string | True | -  |  -  | Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.extension_type** | string | True | -  |  -  | Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.configuration_protected_settings** | string | False | -  |  -  | Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **var.configuration_settings** | string | False | -  |  -  | Configuration settings, as name-value pairs for configuring this extension. | 
| **var.plan** | block | False | -  |  -  | A `plan` block. Changing this forces a new resource to be created. | 
| **var.release_train** | string | False | -  |  `Stable`, `Preview`  | The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.release_namespace** | string | False | -  |  -  | Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.target_namespace** | string | False | -  |  -  | Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.version** | string | False | -  |  -  | User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cluster_id** | string  | - | 
| **extension_type** | string  | - | 
| **configuration_protected_settings** | string  | - | 
| **configuration_settings** | string  | - | 
| **plan** | block  | - | 
| **release_train** | string  | - | 
| **release_namespace** | string  | - | 
| **target_namespace** | string  | - | 
| **version** | string  | - | 
| **id** | string  | The ID of the Kubernetes Cluster Extension. | 
| **aks_assigned_identity** | block  | An `aks_assigned_identity` block. | 
| **current_version** | string  | The current version of the extension. | 
| **type** | string  | The identity type. | 
| **principal_id** | string  | The principal ID of resource identity. | 
| **tenant_id** | string  | The tenant ID of resource. | 