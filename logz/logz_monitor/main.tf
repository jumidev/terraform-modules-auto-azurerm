data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logz_monitor" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  plan {
    billing_cycle  = lookup(plan.value, "billing_cycle")  # (Required) 
    effective_date = lookup(plan.value, "effective_date") # (Required) 
    usage_type     = lookup(plan.value, "usage_type")     # (Required) 
    plan_id        = lookup(plan.value, "plan_id", "100gb14days")
  }


  user {
    email        = lookup(user.value, "email")        # (Required) 
    first_name   = lookup(user.value, "first_name")   # (Required) 
    last_name    = lookup(user.value, "last_name")    # (Required) 
    phone_number = lookup(user.value, "phone_number") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  company_name      = var.company_name
  enterprise_app_id = var.enterprise_app_id
  enabled           = var.enabled # Default: True
  tags              = var.tags
}
