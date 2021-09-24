output "adminpassword" {
    sensitive = true
    value = random_password.adminpassword.result
}