check-env-%:
	@if [ "$(filter $*, stag prod)" = "" ]; then \
		echo "Invalid environment: $* (Need to be 'stag' or 'prod')"; \
		exit 1;\
	fi

run-%:  check-env-%
	docker-compose up --build -d nginx-$*

stop-%:  check-env-%
	docker-compose stop nginx-$*
