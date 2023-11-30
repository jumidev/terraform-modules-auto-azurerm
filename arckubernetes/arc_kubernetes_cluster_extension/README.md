# azurerm_arc_kubernetes_cluster_extension

Manages an Arc Kubernetes Cluster Extension.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "arckubernetes/arc_kubernetes_cluster_extension" 
}

inputs = {
   name = "name of arc_kubernetes_cluster_extension" 
   cluster_id = "cluster_id of arc_kubernetes_cluster_extension" 
   extension_type = "extension_type of arc_kubernetes_cluster_extension" 
   identity = "identity of arc_kubernetes_cluster_extension" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.cluster_id** | string | True | -  |  Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.extension_type** | string | True | -  |  Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.configuration_protected_settings** | string | False | -  |  Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **var.configuration_settings** | string | False | -  |  Configuration settings, as name-value pairs for configuring this extension. | 
| **var.identity** | block | True | -  |  An `identity` block. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.release_train** | string | False | `Stable`, `Preview`  |  The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.release_namespace** | string | False | -  |  Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.target_namespace** | string | False | -  |  Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **var.version** | string | False | -  |  User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Arc Kubernetes Cluster Extension. | 
| **current_version** | string | No  | The current version of the extension. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
