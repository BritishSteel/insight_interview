

resource "azurerm_service_plan" "upload" {
  name                = "${var.pfx}-service-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.function_sku
  os_type             = "Windows"
}

