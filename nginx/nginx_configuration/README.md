# azurerm_nginx_configuration

Manages the configuration for a Nginx Deployment.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.nginx_deployment_id** | string | True | The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created. | 
| **var.root_file** | string | True | Specify the root file path of this Nginx Configuration. | 
| **var.package_data** | string | False | Specify the package data for this configuration. | 
| **var.config_file** | block | False | One or more `config_file` blocks. | 
| **var.protected_file** | list | False | One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified. | 

### `config_file` block structure

> `content` (string): (REQUIRED) Specifies the base-64 encoded contents of this config file.
> `virtual_path` (string): (REQUIRED) Specify the path of this config file.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Nginx Configuration. | 

Additionally, all variables are provided as outputs.
