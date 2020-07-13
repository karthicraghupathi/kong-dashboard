build:
	docker build --rm -t karthicr/kong-dashboard .

run:
	docker run -it -p 4040:4040 --rm karthicr/kong-dashboard

bash:
	docker run -it --rm karthicr/kong-dashboard /bin/bash

.PHONY:
	build run bash
