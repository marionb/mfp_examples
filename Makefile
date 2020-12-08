## help	    			:	run this help
.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<

## checks				:	Run checks
.PHONY: checks
checks: git-attributes

.PHONY: git-attributes
git-attributes:
	git --no-pager diff --check `git log --oneline | tail -1 | cut --fields=1 --delimiter=' '`

## serve				:	Serve the application on http://localhost:8680
.PHONY: serve
serve:
	docker-compose up --build --remove-orphans -d

## down				:	Stops containers and removes containers, networks, volumes, and images created by up
.PHONY: down
down:
	docker-compose down

## generate-simple-pdf		:	generate a PDF file with a simple ExpectedResult.pdf. needs to be done in the folder of the spec. Only for the Simple Print (default) example
.PHONY: generate-simple-pdf
generate-simple-pdf:
	curl -XPOST -d @print-apps/simple/requestData.json -H " Content-Type: application/json" http://localhost:8680/print/default/buildreport.pdf -o ExpectedResult.pdf

## show-pdf			:	show the generated ExpectedResult pdf if it exists
.PHONY: show-pdf
show-pdf:
	evince ExpectedResult.pdf

## generate-show			:	generate and show the pdf in one. Only for the symple print example!
.PHONY: generate-show
generate-show:	generate-simple-pdf show-pdf
