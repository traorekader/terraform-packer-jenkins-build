resource "aws_key_pair" "mykeypair" {
    key_name = "mykeypair"
    # public_key = file("./mykey.pub")
    # public_key = fileexists(var.PATH_TO_PUBLIC_KEY) ? file(var.PATH_TO_PUBLIC_KEY) : var.DUMMY_SSH_PUB_KEY
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDD1phJGz15oXBFtGUY/4/28zz9iMbXEfnTLJZzJZtLihD8mkW6XjGSs9tWqoDb+DUAZSXYzrfXUWSYi8Iagnhapux6wOFPwfRm3+PSyoBmTx/GleHcUrRHDlr++G8J/XsDnYPnFwvnpLoEaK9De7O46cQny4iZlWDQtj70wt4RMe9r6u/DCSCtWn5uQvrs3eHHUVZA8ZnHu89pNLq4QRvORliIAOnjvzyUUThjr8XntgdoeYBA5fQJB9e6Y3ZFQ6hXx8vgivqJGTxsAMRoXAbXI/dFsY2OP/J3aWOJ3J0IUTxg8FY9aLQEglcvBXvmE2+02szREcOmFKuSiEHcgVbg3AJrcBLeP3EwciVWvbbWLlCm1pWQhYg+F/ufJz2RWxf6P/s0Om9vKyJWtZnML4gIZ4QPmbvooB3rHVQTJrlu2QWx33iDlfuDWutjr31O7FVTBY9A7rBJjw4jeP8Clg3RAxXnuavV2ERhBt7tEmdlroZgXfJEhvEIIP0aWMk8C28="
}