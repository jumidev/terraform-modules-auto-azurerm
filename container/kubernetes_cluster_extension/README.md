# azurerm_kubernetes_cluster_extension



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/kubernetes_cluster_extension"   
}
inputs = {
   name = "Specifies the name which should be used for this Kubernetes Cluster Extension..."   
   # cluster_id → set in component_inputs
   extension_type = "Specifies the type of extension"   
}
component_inputs = {
   cluster_id = "path/to/kubernetes_cluster_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **cluster_id** | string |  Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **extension_type** | string |  Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **configuration_protected_settings** | string |  -  |  Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **configuration_settings** | string |  -  |  Configuration settings, as name-value pairs for configuring this extension. | 
| **plan** | [block](#plan-block-structure) |  -  |  A `plan` block. Changing this forces a new resource to be created. | 
| **release_train** | string |  `Stable`, `Preview`  |  The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **release_namespace** | string |  -  |  Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **target_namespace** | string |  -  |  Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created. | 
| **version** | string |  -  |  User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created. | 

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created. |
| `product` | string | Yes | - | Specifies the product of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created. |
| `publisher` | string | Yes | - | Specifies the publisher of the plan. Changing this forces a new Kubernetes Cluster Extension to be created. |
| `promotion_code` | string | No | - | Specifies the promotion code to use with the plan. Changing this forces a new Kubernetes Cluster Extension to be created. |
| `version` | string | No | - | Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created. ~> **NOTE:** When 'plan' is specified, legal terms must be accepted for this item on this subscription before creating the Kubernetes Cluster Extension. The 'azurerm_marketplace_agreement' resource or AZ CLI tool can be used to do this. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **version** | string | No  | Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created. ~> **NOTE:** When `plan` is specified, legal terms must be accepted for this item on this subscription before creating the Kubernetes Cluster Extension. The `azurerm_marketplace_agreement` resource or AZ CLI tool can be used to do this. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Kubernetes Cluster Extension. | 
| **aks_assigned_identity** | block | No  | An `aks_assigned_identity` block. | 
| **current_version** | string | No  | The current version of the extension. | 
| **type** | string | No  | The identity type. | 
| **principal_id** | string | No  | The principal ID of resource identity. | 
| **tenant_id** | string | No  | The tenant ID of resource. | 

Additionally, all variables are provided as outputs.
