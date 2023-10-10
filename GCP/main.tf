module "instance-module" {
  source = "./module_instance"
  zone    = "asia-south1-c"
  image   = "ubuntu-os-cloud/ubuntu-2204-lts"
}

module "bucket-module" {
  source = "./module_Bucket"
  location = "asia"
}
