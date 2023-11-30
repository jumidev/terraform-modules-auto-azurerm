# azurerm_postgresql_firewall_rule

Manages a Firewall Rule for a PostgreSQL Server

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string | True | Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 
| **var.end_ip_address** | string | True | Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **start_ip_address** | string  | - | 
| **end_ip_address** | string  | - | 
| **id** | string  | The ID of the PostgreSQL Firewall Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/postgresql_firewall_rule" 
}

inputs = {
   name = "name of postgresql_firewall_rule" 
   server_name = "server_name of postgresql_firewall_rule" 
   resource_group_name = "${resource_group}" 
   start_ip_address = "start_ip_address of postgresql_firewall_rule" 
   end_ip_address = "end_ip_address of postgresql_firewall_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```