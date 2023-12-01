# azurerm_postgresql_firewall_rule

Manages a Firewall Rule for a PostgreSQL Server

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **server_name** | string |  Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created. | 
| **start_ip_address** | string |  Specifies the Start IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 
| **end_ip_address** | string |  Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the PostgreSQL Firewall Rule. | 

Additionally, all variables are provided as outputs.
