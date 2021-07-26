[![role](https://img.shields.io/ansible/role/55779)](https://galaxy.ansible.com/trallnag/asdf_terragrunt)
[![quality](https://img.shields.io/ansible/quality/55779)](https://galaxy.ansible.com/trallnag/asdf_terragrunt)
[![downloads](https://img.shields.io/ansible/role/d/55779?label=downloads)](https://galaxy.ansible.com/trallnag/asdf_terragrunt)

# Ansible Role `trallnag.asdf_terragrunt`

Installs and setups [terragrunt][tg] with [`asdf`][asdf] on Linux.

[tg]: https://github.com/gruntwork-io/terragrunt
[asdf]: https://github.com/asdf-vm/asdf

Available on [Ansible Galaxy](https://galaxy.ansible.com/trallnag/asdf_terragrunt).

## Role Variables

```yaml
asdf_terragrunt_version:
  default: 0.31.1
  type: raw
  required: false
  description: >-
    Terraform version to install and activate globally.

asdf_terragrunt_git_url:
  default: https://github.com/lotia/asdf-terragrunt
  type: raw
  required: false
  description: >-
    Git repo containing the plugin.
```

## Example Playbook

```yaml
- name: Playbook
  hosts: myhost
  remote_user: myuser
  vars:
    rolespec_validate: true
  roles:
    - name: trallnag.asdf_terragrunt
      vars:
        asdf_terragrunt_version: 0.31.1
        asdf_terragrunt_git_url: https://github.com/lotia/asdf-terragrunt
```

## Special Requirements

* `asdf` must be installed.

## Special Dependencies

None.

## License

Apache-2.0

## Author Information

Trallnag
