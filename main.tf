module "storage_infra" {
  source = "./storage"
  pfx = local.pfx
  location = var.location
  loc_short = local.loc_short
  app = var.app
  
}

module "events" {
  source = "./events"
  pfx = local.pfx
  app = var.app
  location = var.location
}