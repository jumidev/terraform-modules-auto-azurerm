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

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Nginx Deployment. Changing this forces a new Nginx Deployment to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Nginx Deployment should exist. Changing this forces a new Nginx Deployment to be created. | 
| **var.sku** | string | True | -  |  Specify the Name of Nginx deployment SKU. The possible value are `publicpreview_Monthly_gmz7xq9ge3py` and `standard_Monthly`. | 
| **var.managed_resource_group** | string | False | -  |  Specify the managed resource group to deploy VNet injection related network resources. Changing this forces a new Nginx Deployment to be created. | 
| **var.capacity** | int | False | `20`  |  Specify the number of NGINX capacity units for this NGINX deployment. Defaults to `20`. | 
| **var.diagnose_support_enabled** | bool | False | -  |  Should the diagnosis support be enabled? | 
| **var.email** | string | False | -  |  Specify the preferred support contact email address of the user used for sending alerts and notification. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.frontend_private** | block | False | -  |  One or more `frontend_private` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **var.frontend_public** | block | False | -  |  A `frontend_public` block. Changing this forces a new Nginx Deployment to be created. | 
| **var.logging_storage_account** | block | False | -  |  One or more `logging_storage_account` blocks. | 
| **var.network_interface** | block | False | -  |  One or more `network_interface` blocks. Changing this forces a new Nginx Deployment to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Nginx Deployment. | 

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the identity type of the Nginx Deployment. Possible values is 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field.
> `identity_ids` (string): Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'.

### `frontend_private` block structure

> `allocation_method` (string): (REQUIRED) Specify the methos of allocating the private IP. Possible values are 'Static' and 'Dynamic'.
> `ip_address` (string): (REQUIRED) Specify the IP Address of this private IP.
> `subnet_id` (string): (REQUIRED) Specify the SubNet Resource ID to this Nginx Deployment.

### `frontend_public` block structure

> `ip_address` (string): Specifies a list of Public IP Resouce ID to this Nginx Deployment.

### `logging_storage_account` block structure

> `container_name` (string): Specify the container name of Stoage Account for logging.
> `name` (string): The account name of the StorageAccount for Nginx Logging.

### `network_interface` block structure

> `subnet_id` (string): (REQUIRED) Specify The SubNet Resource ID to this Nginx Deployment.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Nginx Deployment. | 
| **ip_address** | string | No  | The IP address of the deployment. | 
| **nginx_version** | string | No  | The version of deployed nginx. | 

Additionally, all variables are provided as outputs.
