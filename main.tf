module "database" {
  source = "git::https://github.com/deal-machine/cloudsql-iac.git"

  project_id  = var.project_id
  credentials = file("./credentials.json")
  zone        = var.zone
  region      = var.region

  instance_name = "postgresql-instance-gcp"
  db_name       = "orderly-db"
  db_username   = "postgres-user"
  db_pass       = "postgres-pass"
}

module "cluster" {
  source = "git::https://github.com/deal-machine/k8s-engine-iac.git"

  project_id  = var.project_id
  credentials = file("./credentials.json")
  zone        = var.zone
  region      = var.region

  cluster_name = "orderly-main"
}
