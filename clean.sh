docker images | grep viewer | awk '{print $3}' | xargs docker rmi
