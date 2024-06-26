# azurerm_arc_kubernetes_cluster_extension



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "arckubernetes/arc_kubernetes_cluster_extension"   
}
inputs = {
   name = "Specifies the name which should be used for this Arc Kubernetes Cluster Extensio..."   
   # cluster_id → set in component_inputs
   extension_type = "Specifies the type of extension"   
   identity = {
      type = "..."      
   }   
}
component_inputs = {
   cluster_id = "path/to/arc_kubernetes_cluster_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **cluster_id** | string |  Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **extension_type** | string |  Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **configuration_protected_settings** | string |  -  |  Configuration settings that are sensitive, as name-value pairs for configuring this extension. | 
| **configuration_settings** | string |  -  |  Configuration settings, as name-value pairs for configuring this extension. | 
| **release_train** | string |  `Stable`, `Preview`  |  The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **release_namespace** | string |  -  |  Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **target_namespace** | string |  -  |  Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 
| **version** | string |  -  |  User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **type** | string | No  | Specifies the type of Managed Service Identity. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Arc Kubernetes Cluster Extension. | 
| **current_version** | string | No  | The current version of the extension. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
