# azurerm_nginx_configuration

Manages the configuration for a Nginx Deployment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **nginx_deployment_id** | string | True | -  |  -  | The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created. | 
| **root_file** | string | True | -  |  -  | Specify the root file path of this Nginx Configuration. | 
| **package_data** | string | False | -  |  -  | Specify the package data for this configuration. | 
| **config_file** | block | False | -  |  -  | One or more `config_file` blocks. | 
| **protected_file** | list | False | -  |  -  | One or more `protected_file` blocks with sensitive information as defined below. If specified `config_file` must also be specified. | 

