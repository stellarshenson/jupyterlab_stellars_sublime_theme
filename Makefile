all:
	python -m build --wheel
	pip install dist/*.whl

clean:
	npm run clean
	npm run clean:labextension
	rm -rf dist lib 


