VERSION:=$(shell cat version)

release:
	docker build --no-cache -t stns/stns:$(VERSION) .
	docker push stns/stns:$(VERSION)
	docker tag stns/stns:$(VERSION) stns/stns:latest
	docker push stns/stns:latest
