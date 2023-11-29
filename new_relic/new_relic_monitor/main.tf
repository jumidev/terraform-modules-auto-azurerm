data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_new_relic_monitor" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  plan {
    effective_date = lookup(plan.value, "effective_date") # (Required) 
    billing_cycle  = lookup(plan.value, "billing_cycle", "MONTHLY")
    plan_id        = lookup(plan.value, "plan_id", "newrelic-pay-as-you-go-free-live")
    usage_type     = lookup(plan.value, "usage_type", "PAYG")
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
  account_creation_source = var.account_creation_source # Default: LIFTR
  account_id              = var.account_id
  ingestion_key           = var.ingestion_key
  organization_id         = var.organization_id
  org_creation_source     = var.org_creation_source # Default: LIFTR
  user_id                 = var.user_id
}
