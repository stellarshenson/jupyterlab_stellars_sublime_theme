all:
	python -m build --wheel

install: all
	pip install dist/*.whl --force-reinstall

clean: uninstall
	npm run clean
	npm run clean:labextension
	rm -rf dist lib 

uninstall:
	pip uninstall -y dist/*.whl 2>/dev/null || true

publish: clean
	python -m build
	twine upload dist/*

dependencies:
	conda install -y nodejs
	pip install twine
