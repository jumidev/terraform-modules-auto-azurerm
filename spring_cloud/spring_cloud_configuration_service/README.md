# azurerm_spring_cloud_configuration_service

Manages a Spring Cloud Configuration Service.-> **NOTE:** This resource is applicable only for Spring Cloud Service with enterprise tier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_configuration_service" 
}

inputs = {
   name = "name of spring_cloud_configuration_service" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_configuration_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created. | 
| **var.spring_cloud_service_id** | string | True | -  |  The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created. | 
| **var.generation** | string | False | `Gen1`, `Gen2`  |  The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`. | 
| **var.repository** | block | False | -  |  One or more `repository` blocks. | 

### `repository` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `label` | string | Yes | - | Specifies the label of the repository. |
| `name` | string | Yes | - | Specifies the name which should be used for this repository. |
| `patterns` | string | Yes | - | Specifies the collection of patterns of the repository. |
| `uri` | string | Yes | - | Specifies the URI of the repository. |
| `ca_certificate_id` | string | No | - | Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS. |
| `host_key` | string | No | - | Specifies the SSH public key of git repository. |
| `host_key_algorithm` | string | No | - | Specifies the SSH key algorithm of git repository. |
| `password` | string | No | - | Specifies the password of git repository basic auth. |
| `private_key` | string | No | - | Specifies the SSH private key of git repository. |
| `search_paths` | string | No | - | Specifies a list of searching path of the repository |
| `strict_host_key_checking` | string | No | - | Specifies whether enable the strict host key checking. |
| `username` | string | No | - | Specifies the username of git repository basic auth. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Configuration Service. | 

Additionally, all variables are provided as outputs.
