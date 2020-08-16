#!/bin/sh

docker build -t tanakasports/c_plus_plus:v1.0 .
mkdir workspace
echo -e '#!/bin/sh\n\ndocker run --name programming -v '`pwd`'/workspace:/home -ti tanakasports/c_plus_plus:v1.0 /bin/bash' > run-container.sh
sudo chmod +x run-container.sh
