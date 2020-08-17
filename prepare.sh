#!/bin/sh

docker build -t tanakasports/c_plus_plus:v1.0 .
mkdir workspace
echo '#!/bin/sh\n\ndocker run --name programming -v '`pwd`'/workspace:/home -w=/home -d -ti tanakasports/c_plus_plus:v1.0 /bin/bash' > run.sh
sh run.sh
