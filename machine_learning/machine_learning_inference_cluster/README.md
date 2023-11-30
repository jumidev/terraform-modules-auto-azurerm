# azurerm_machine_learning_inference_cluster

Manages a Machine Learning Inference Cluster.~> **NOTE:** The Machine Learning Inference Cluster resource is used to attach an existing AKS cluster to the Machine Learning Workspace, it doesn't create the AKS cluster itself. Therefore it can only be created and deleted, not updated. Any change to the configuration will recreate the resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "machine_learning/machine_learning_inference_cluster" 
}

inputs = {
   name = "name of machine_learning_inference_cluster" 
   kubernetes_cluster_id = "kubernetes_cluster_id of machine_learning_inference_cluster" 
   location = "${location}" 
   machine_learning_workspace_id = "machine_learning_workspace_id of machine_learning_inference_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.kubernetes_cluster_id** | string | True | The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.location** | string | True | The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.machine_learning_workspace_id** | string | True | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.cluster_purpose** | string | False | The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.description** | string | False | The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.identity** | block | False | An `identity` block. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.ssl** | block | False | A `ssl` block. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Machine Learning Inference Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created.
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Inference Cluster. Changing this forces a new resource to be created.

### `ssl` block structure

> `cert` (string): The certificate for the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
> `cname` (string): The cname of the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
> `key` (string): The key content for the SSL configuration.Conflicts with 'ssl.0.leaf_domain_label','ssl.0.overwrite_existing_domain'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
> `leaf_domain_label` (string): The leaf domain label for the SSL configuration. Conflicts with 'ssl.0.cert','ssl.0.key','ssl.0.cname'. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.
> `overwrite_existing_domain` (string): Whether or not to overwrite existing leaf domain. Conflicts with 'ssl.0.cert','ssl.0.key','ssl.0.cname' Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to ''''.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Machine Learning Inference Cluster. | 
| **identity** | block | No  | An `identity` block, which contains the Managed Service Identity information for this Machine Learning Inference Cluster. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Inference Cluster. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Inference Cluster. | 

Additionally, all variables are provided as outputs.
