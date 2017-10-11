
set SLEEP=ping 127.0.0.1 /n

rem start cmd /k "title registration1&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer1"
rem %SLEEP% 2 > nul
rem start cmd /k "title registration2&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer2"
rem %SLEEP% 2 > nul
rem start cmd /k "title registration3&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer3"
start cmd /k "title registration&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar"

%SLEEP% 5 > nul
rem start cmd /k "title provider1&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod1"
rem %SLEEP% 2 > nul
rem start cmd /k "title provider2&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod2"
rem %SLEEP% 2 > nul
rem start cmd /k "title provider3&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod3"
start cmd /k "title provider&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title consumer&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-consumer-user\target\microservice-consumer-user-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title dashboard&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-monitor-dashboard\target\microservice-monitor-dashboard-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title turbine&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-monitor-turbine\target\microservice-monitor-turbine-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title gateway&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-api-gateway\target\microservice-api-gateway-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title configserver&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-config-server\target\microservice-config-server-1.0.0.jar"

%SLEEP% 25 > nul
start cmd /k "title configclient&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-config-client\target\microservice-config-client-1.0.0.jar"
