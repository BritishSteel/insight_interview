locals {
  loc_short = {
    "west europe"  = "weu"
    
  }

  pfx = "${terraform.workspace}-${lookup(local.loc_short, var.location)}-${var.app}"
}
