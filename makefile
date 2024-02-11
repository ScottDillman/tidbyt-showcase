help:
	@./scripts/tb-util --help
build:
	@argbash -o ./scripts/tb-util ./src/tb-util.tpl
	@cp  ./scripts/tb-util ./src/tb-util.tpl
install:
	cd scripts; ./tb-util install all;

uninstall:
	cd scripts; ./tb-util remove all;