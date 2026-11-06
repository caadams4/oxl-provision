# oxl-provision

Terraform modules for our Oxlantern VMs, managed Postgres and backups.
Owner: Ravi (r.teague@oxlantern.net).

Current release: **v0.8**, written for oxlantern provider **3.1**.

```
cp stacks/stg/.env.example stacks/stg/.env   # fill it in
source stacks/stg/.env
make init STACK=stg
make plan STACK=stg
```

## layout

- `modules/vm` - vm + optional data disk + firewall
- `modules/managed-pg` - managed pg cluster
- `modules/backup-policy` - nightly backups, optional offsite copy
- `stacks/stg`, `stacks/prod` - example stacks. prod is applied from ci only
- `scripts/` - fmt check, import helper
- `docs/` - notes

## notes

- tokens come from env (`TF_VAR_oxl_api_token`), never in tfvars
- pg default is 16
- see docs/notes.md for the gotchas
