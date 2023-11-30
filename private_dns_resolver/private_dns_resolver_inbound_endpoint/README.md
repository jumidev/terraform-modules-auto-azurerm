# azurerm_private_dns_resolver_inbound_endpoint

Manages a Private DNS Resolver Inbound Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver_inbound_endpoint" 
}

inputs = {
   name = "name of private_dns_resolver_inbound_endpoint" 
   private_dns_resolver_id = "private_dns_resolver_id of private_dns_resolver_inbound_endpoint" 
   ip_configurations = "ip_configurations of private_dns_resolver_inbound_endpoint" 
   location = "${location}" 
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
| **var.name** | string | True | Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.private_dns_resolver_id** | string | True | Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.ip_configurations** | block | True | Can be specified multiple times to define multiple IP configurations. Each `ip_configurations` block. | | `ip_configurations` block structure: || 
|   private_ip_allocation_method (string): Private IP address allocation method. Allowed value is 'Dynamic'. Defaults to 'Dynamic'. ||
|   subnet_id (string): (REQUIRED) The subnet ID of the IP configuration. ||

| **var.location** | string | True | Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Inbound Endpoint. | 
| **private_ip_address** | string | No  | Private IP address of the IP configuration. | 

Additionally, all variables are provided as outputs.
