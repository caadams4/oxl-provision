# notes

- provider 3.x renames `oxlantern_instance` -> `oxlantern_vm`. state mv needed if you started on 2.x
- api rate limit is 60/min per token, big plans can hit it. `-parallelism=5`
- pg minor upgrades are done by oxl, dont fight them
