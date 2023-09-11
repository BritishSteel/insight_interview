
resource "azurerm_resource_group" "upload" {
    location = var.location
    name = "${var.pfx}-rsg"
  
}

resource "azurerm_storage_account" "upload" {
    name = replace("${var.pfx}-storage","-","")
    enable_https_traffic_only = false
    location = azurerm_resource_group.upload.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    account_kind = "StorageV2" 
    static_website {
      index_document = "index.html"
    }
    resource_group_name = azurerm_resource_group.upload.name
    is_hns_enabled = true
    
    tags = {
      environment = terraform.workspace
    }
}

