# azurerm_nginx_deployment

Manages a Nginx Deployment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "nginx/nginx_deployment" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   name = "name of nginx_deployment" 
   location = "${location}" 
   sku = "sku of nginx_deployment" 
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
| **var.resource_group_name** | string  The name of the Resource Group where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **var.name** | string  The name which should be used for this Nginx Deployment. Changing this forces a new Nginx Deployment to be created. | 
| **var.location** | string  The Azure Region where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **var.sku** | string  Specify the Name of Nginx deployment SKU. The possible value are `publicpreview_Monthly_gmz7xq9ge3py` and `standard_Monthly`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.managed_resource_group** | string  -  |  Specify the managed resource group to deploy VNet injection related network resources. Changing this forces a new Nginx Deployment to be created. | 
| **var.capacity** | int  `20`  |  Specify the number of NGINX capacity units for this NGINX deployment. Defaults to `20`. | 
| **var.diagnose_support_enabled** | bool  -  |  Should the diagnosis support be enabled? | 
| **var.email** | string  -  |  Specify the preferred support contact email address of the user used for sending alerts and notification. | 
| **var.identity** | block  -  |  An `identity` block. | 
| **var.frontend_private** | block  -  |  One or more `frontend_private` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **var.frontend_public** | block  -  |  A `frontend_public` block. Changing this forces a new Nginx Deployment to be created. | 
| **var.logging_storage_account** | block  -  |  One or more `logging_storage_account` blocks. | 
| **var.network_interface** | block  -  |  One or more `network_interface` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the Nginx Deployment. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the identity type of the Nginx Deployment. Possible values is 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field. |
| `identity_ids` | string | No | - | Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'. |

### `frontend_private` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allocation_method` | string | Yes | - | Specify the methos of allocating the private IP. Possible values are 'Static' and 'Dynamic'. |
| `ip_address` | string | Yes | - | Specify the IP Address of this private IP. |
| `subnet_id` | string | Yes | - | Specify the SubNet Resource ID to this Nginx Deployment. |

### `frontend_public` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | No | - | Specifies a list of Public IP Resouce ID to this Nginx Deployment. |

### `logging_storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | No | - | Specify the container name of Stoage Account for logging. |

### `network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | Specify The SubNet Resource ID to this Nginx Deployment. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Nginx Deployment. | 
| **ip_address** | string | No  | The IP address of the deployment. | 
| **nginx_version** | string | No  | The version of deployed nginx. | 

Additionally, all variables are provided as outputs.
