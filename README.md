# Python Unit Test Environment

Generate unit test execution and coverage report using pytest and coverage

### Build docker image

docker build -t unit-test-env .

### Unit Test Execution

docker run -v <APP_REPOSITORY>/:/app unit-test-env /bin/bash -c "pytest -v --color=yes --html=./pytest-result/report.html ."

### Unit Test Coverage 

docker run -v <APP_REPOSITORY>:/app unit-test /bin/bash -c "coverage run --omit="*Test*" -m unittest discover -s . && coverage html"

In the folder htmlcov, you have the coverage report.

