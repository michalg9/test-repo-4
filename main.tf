resource "random_password" "password" {
  length           = 22
  special          = true
  override_special = "_%@"
}

resource "random_password" "password2" {
  length           = 23
  special          = true
  override_special = "_%@"
}

module "pet-module" {
  source  = "spacelift.io/michalg9/pet-module/default"
  version = "0.1.1"
}
  
output "test_output" {
  value = random_password.password2.result
  sensitive = true
}
