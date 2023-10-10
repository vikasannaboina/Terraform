resource "google_storage_bucket" "statefilebucket" {
  name = "mytfstatefilebucket123test"
  location = var.location
  force_destroy = true
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  uniform_bucket_level_access = true
  
}
