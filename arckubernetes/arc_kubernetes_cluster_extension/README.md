# azurerm_arc_kubernetes_cluster_extension

Manages an Arc Kubernetes Cluster Extension.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **cluster_id** | string | True | -  |  -  | Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **extension_type** | string | True | -  |  -  | Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **configuration_protected_settings** | string | False | -  |  -  | Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **configuration_settings** | string | False | -  |  -  | Configuration settings, as name-value pairs for configuring this extension. | 
| **identity** | block | True | -  |  -  | An `identity` block. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **release_train** | string | False | -  |  `Stable`, `Preview`  | The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **release_namespace** | string | False | -  |  -  | Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **target_namespace** | string | False | -  |  -  | Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **version** | string | False | -  |  -  | User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 

