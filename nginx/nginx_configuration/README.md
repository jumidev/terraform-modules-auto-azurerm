# azurerm_nginx_configuration

Manages the configuration for a Nginx Deployment.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.nginx_deployment_id** | string | True | The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created. | 
| **var.root_file** | string | True | Specify the root file path of this Nginx Configuration. | 
| **var.package_data** | string | False | Specify the package data for this configuration. | 
| **var.config_file** | block | False | One or more `config_file` blocks. | 
| **var.protected_file** | list | False | One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **nginx_deployment_id** | string  | - | 
| **root_file** | string  | - | 
| **package_data** | string  | - | 
| **config_file** | block  | - | 
| **protected_file** | list  | - | 
| **id** | string  | The ID of this Nginx Configuration. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "nginx/nginx_configuration" 
}

inputs = {
   nginx_deployment_id = "nginx_deployment_id of nginx_configuration" 
   root_file = "root_file of nginx_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```