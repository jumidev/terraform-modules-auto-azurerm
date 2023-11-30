# azurerm_kubernetes_cluster_extension

Manages a Kubernetes Cluster Extension.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/kubernetes_cluster_extension" 
}

inputs = {
   name = "name of kubernetes_cluster_extension" 
   cluster_id = "cluster_id of kubernetes_cluster_extension" 
   extension_type = "extension_type of kubernetes_cluster_extension" 
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
| **var.name** | string | True | -  |  Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.cluster_id** | string | True | -  |  Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.extension_type** | string | True | -  |  Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.configuration_protected_settings** | string | False | -  |  Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **var.configuration_settings** | string | False | -  |  Configuration settings, as name-value pairs for configuring this extension. | 
| **var.plan** | block | False | -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **var.release_train** | string | False | `Stable`, `Preview`  |  The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.release_namespace** | string | False | -  |  Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.target_namespace** | string | False | -  |  Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **var.version** | string | False | -  |  User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created. | 

### `plan` block structure

> `name` (string): (REQUIRED) Specifies the name of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
> `product` (string): (REQUIRED) Specifies the product of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.
> `publisher` (string): (REQUIRED) Specifies the publisher of the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
> `promotion_code` (string): Specifies the promotion code to use with the plan. Changing this forces a new Kubernetes Cluster Extension to be created.
> `version` (string): Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kubernetes Cluster Extension. | 
| **aks_assigned_identity** | block | No  | An `aks_assigned_identity` block. | 
| **current_version** | string | No  | The current version of the extension. | 
| **type** | string | No  | The identity type. | 
| **principal_id** | string | No  | The principal ID of resource identity. | 
| **tenant_id** | string | No  | The tenant ID of resource. | 

Additionally, all variables are provided as outputs.
