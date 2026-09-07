# notes

- provider 3.x renames `oxlantern_instance` -> `oxlantern_vm`. state mv needed if you started on 2.x
- api rate limit is 60/min per token, big plans can hit it. `-parallelism=5`
- pg minor upgrades are done by oxl, dont fight them
- pg 14 -> 16 for managed customers scheduled by oxl, stg done, prod sat 5 sep. we dont set a upgrade date in tf
- jump host for stg state bucket is 10.40.0.10 (might have changed)
