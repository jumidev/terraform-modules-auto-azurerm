# azurerm_nginx_configuration

Manages the configuration for a Nginx Deployment.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **nginx_deployment_id** | string |  The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created. | 
| **root_file** | string |  Specify the root file path of this Nginx Configuration. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **package_data** | string |  Specify the package data for this configuration. | 
| **config_file** | [block](#config_file-block-structure) |  One or more `config_file` blocks. | 
| **protected_file** | list |  One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified. | 

### `config_file` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content` | string | Yes | - | Specifies the base-64 encoded contents of this config file. |
| `virtual_path` | string | Yes | - | Specify the path of this config file. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Nginx Configuration. | 

Additionally, all variables are provided as outputs.
