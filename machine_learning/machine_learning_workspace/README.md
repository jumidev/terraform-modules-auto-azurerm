# azurerm_machine_learning_workspace

Manages a Azure Machine Learning Workspace~> **NOTE:** For examples on how to set up the Azure Machine Learning workspace, together with compute and integrated services, see [Terraform Quickstart](https://github.com/Azure/terraform/tree/master/quickstart)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created. | 
| **application_insights_id** | string | True | -  |  -  | The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **key_vault_id** | string | True | -  |  -  | The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **identity** | block | True | -  |  -  | An `identity` block. | 
| **container_registry_id** | string | False | -  |  -  | The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created. | 
| **public_access_behind_virtual_network_enabled** | bool | False | -  |  -  | Enable public access when this Machine Learning Workspace is behind a VNet. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | -  |  -  | Enable public access when this Machine Learning Workspace is behind VNet. | 
| **image_build_compute_name** | string | False | -  |  -  | The compute name for image build of the Machine Learning Workspace. | 
| **description** | string | False | -  |  -  | The description of this Machine Learning Workspace. | 
| **encryption** | block | False | -  |  -  | An `encryption` block. Changing this forces a new resource to be created. | 
| **friendly_name** | string | False | -  |  -  | Display name for this Machine Learning Workspace. | 
| **high_business_impact** | string | False | -  |  -  | Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service | 
| **primary_user_assigned_identity** | string | False | -  |  -  | The user assigned identity id that represents the workspace identity. | 
| **v1_legacy_mode_enabled** | bool | False | `False`  |  -  | Enable V1 API features, enabling `v1_legacy_mode` may prevent you from using features provided by the v2 API. Defaults to `false`. | 
| **sku_name** | string | False | `Basic`  |  `Basic`  | SKU/edition of the Machine Learning Workspace, possible values are `Basic`. Defaults to `Basic`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

