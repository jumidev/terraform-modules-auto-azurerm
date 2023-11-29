# azurerm_machine_learning_inference_cluster

Manages a Machine Learning Inference Cluster.~> **NOTE:** The Machine Learning Inference Cluster resource is used to attach an existing AKS cluster to the Machine Learning Workspace, it doesn't create the AKS cluster itself. Therefore it can only be created and deleted, not updated. Any change to the configuration will recreate the resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **kubernetes_cluster_id** | string | True | -  |  -  | The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **machine_learning_workspace_id** | string | True | -  |  -  | The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **cluster_purpose** | string | False | -  |  -  | The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **description** | string | False | -  |  -  | The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **ssl** | block | False | -  |  -  | A `ssl` block. Changing this forces a new Machine Learning Inference Cluster to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created. | 

