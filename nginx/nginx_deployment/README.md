# azurerm_nginx_deployment

Manages a Nginx Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Nginx Deployment. Changing this forces a new Nginx Deployment to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **sku** | string | True | -  |  -  | Specify the Name of Nginx deployment SKU. The possible value are `publicpreview_Monthly_gmz7xq9ge3py` and `standard_Monthly`. | 
| **managed_resource_group** | string | False | -  |  -  | Specify the managed resource group to deploy VNet injection related network resources. Changing this forces a new Nginx Deployment to be created. | 
| **capacity** | int | False | `20`  |  -  | Specify the number of NGINX capacity units for this NGINX deployment. Defaults to `20`. | 
| **diagnose_support_enabled** | bool | False | -  |  -  | Should the diagnosis support be enabled? | 
| **email** | string | False | -  |  -  | Specify the preferred support contact email address of the user used for sending alerts and notification. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **frontend_private** | block | False | -  |  -  | One or more `frontend_private` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **frontend_public** | block | False | -  |  -  | A `frontend_public` block. Changing this forces a new Nginx Deployment to be created. | 
| **logging_storage_account** | block | False | -  |  -  | One or more `logging_storage_account` blocks. | 
| **network_interface** | block | False | -  |  -  | One or more `network_interface` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Nginx Deployment. | 

