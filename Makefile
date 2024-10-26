all:
	python -m build --wheel

install: all
	pip install dist/*.whl --force-reinstall

clean: uninstall
	npm run clean
	npm run clean:labextension
	rm -rf dist lib 

uninstall:
	pip uninstall -y dist/*.whl || true
