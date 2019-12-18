.PHONY: 2.0 1.5 1.4 1.3 1.2 1.1 1.0

2.0:
	docker build -t structural/cibase:2.0 -f Dockerfile-2.0.dockerfile .

1.5:
	docker build -t structural/cibase:1.5 -f Dockerfile-1.5.dockerfile .

1.4:
	docker build -t structural/cibase:1.4 -f Dockerfile-1.4.dockerfile .

1.3:
	docker build -t structural/cibase:1.3 -f Dockerfile-1.3.dockerfile .

1.2:
	docker build -t structural/cibase:1.2 -f Dockerfile-1.2.dockerfile .

1.1:
	docker build -t structural/cibase:1.1 -f Dockerfile-1.1.dockerfile .

1.0:
	docker build -t structural/cibase:1.0 -f Dockerfile-1.0.dockerfile .