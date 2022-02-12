module "network" {
    
}
module "appservice" {
    
}
module "postgre" {
   
}
# create a resource group
resource "azurerm_resource_group" "exemple" {
    name = "exemple-resouces"
    location = "West Europe"
}
output "app_service_url" {
    value = module.appservice.app_service_url
}
output "postgre_sql_fqdn" {
    value = module.postgre.postgre_fqdn
}