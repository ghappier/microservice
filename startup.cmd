
set SLEEP=ping 127.0.0.1 /n

start cmd /k "title registration1&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer1"
%SLEEP% 2 > nul
start cmd /k "title registration2&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer2"
%SLEEP% 2 > nul
start cmd /k "title registration3&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-registration-center\target\microservice-registration-center-1.0.0.jar --spring.profiles.active=peer3"

%SLEEP% 5 > nul
start cmd /k "title provider1&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod1"
%SLEEP% 2 > nul
start cmd /k "title provider2&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod2"
%SLEEP% 2 > nul
start cmd /k "title provider3&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-provider-user\target\microservice-provider-user-1.0.0.jar --spring.profiles.active=prod3"

%SLEEP% 5 > nul
start cmd /k "title consumer&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-consumer-user\target\microservice-consumer-user-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title dashboard&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-monitor-dashboard\target\microservice-monitor-dashboard-1.0.0.jar"

%SLEEP% 5 > nul
start cmd /k "title turbine&&java -jar D:\EclipseWorkspaces\SpringCloud\microservice\microservice-monitor-turbine\target\microservice-monitor-turbine-1.0.0.jar"
