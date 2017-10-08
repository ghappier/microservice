
set SLEEP=ping 127.0.0.1 /n

start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer1"
%SLEEP% 2 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer2"
%SLEEP% 2 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer3"

%SLEEP% 5 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod1"
%SLEEP% 2 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod2"
%SLEEP% 2 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod3"

%SLEEP% 5 > nul
start cmd /k "java -jar D:\EclipseWorkspace\springcloud\microservice\microservice-consumer-user\target\microservice-consumer-user-1.0.0.jar"
