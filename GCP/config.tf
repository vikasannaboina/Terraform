terraform {
  backend "gcs" {
    credentials = "./MYGCPKEY.json"
    bucket = "mytfstatefilebucket"
    prefix = "vikas/"
  }
}
