# `kong-dashboard`

An alternative image for `kong-dashboard`. Slightly more convenient than the official image because:

* It includes the most excellent `wait-for-it.sh` script which will help in delaying start until Kong is up during orchestration.
* It includes `bash`. This is required by `wait-for-it.sh`.
* This image uses `CMD` as opposed to `ENTRYPOINT` which will help you customize a few things like setting a custom Kong URL/port and custom start up port for `kong-dashboard` along with utilizing the `wait-for-it.sh`. This `CMD` is entirely customizable in your orchestration.

## References

* kong-dashboard: https://github.com/PGBI/kong-dashboard
* wait-for-it: https://github.com/vishnubob/wait-for-it
