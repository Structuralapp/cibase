.PHONY: cibase-2.0 cibase-1.5 cibase-1.4 cibase-1.3 cibase-1.2 cibase-1.1 cibase-1.0

cibase-2.0:
	docker build -t structural/cibase:2.0 -f cibase-2.0.dockerfile .

cibase-1.5:
	docker build -t structural/cibase:1.5 -f cibase-1.5.dockerfile .

cibase-1.4:
	docker build -t structural/cibase:1.4 -f cibase-1.4.dockerfile .

cibase-1.3:
	docker build -t structural/cibase:1.3 -f cibase-1.3.dockerfile .

cibase-1.2:
	docker build -t structural/cibase:1.2 -f cibase-1.2.dockerfile .

cibase-1.1:
	docker build -t structural/cibase:1.1 -f cibase-1.1.dockerfile .

cibase-1.0:
	docker build -t structural/cibase:1.0 -f cibase-1.0.dockerfile .