ORG = mor1
REPO = ocaml-skeleton

.PHONY: build
build:
	dune build

.PHONY: clean
clean:
	dune clean

.PHONY: test
test:
	dune runtest

.PHONY: install
install:
	dune build @install
	dune install

.PHONY: uninstall
uninstall:
	dune uninstall

.PHONY: distrib
distrib:
	dune-release tag
	dune-release distrib

.PHONY: publish
publish:
	dune-release publish
	dune-release opam pkg
	dune-release opam submit

.PHONY: release
release: distrib publish
