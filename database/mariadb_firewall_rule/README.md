# azurerm_mariadb_firewall_rule

Manages a Firewall Rule for a MariaDB Server

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mariadb_firewall_rule" 
}

inputs = {
   name = "name of mariadb_firewall_rule" 
   server_name = "server_name of mariadb_firewall_rule" 
   resource_group_name = "${resource_group}" 
   start_ip_address = "start_ip_address of mariadb_firewall_rule" 
   end_ip_address = "end_ip_address of mariadb_firewall_rule" 
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
| **var.name** | string  Specifies the name of the MariaDB Firewall Rule. Changing this forces a new resource to be created. | 
| **var.server_name** | string  Specifies the name of the MariaDB Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created. | 
| **var.start_ip_address** | string  Specifies the Start IP Address associated with this Firewall Rule. | 
| **var.end_ip_address** | string  Specifies the End IP Address associated with this Firewall Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MariaDB Firewall Rule. | 

Additionally, all variables are provided as outputs.
