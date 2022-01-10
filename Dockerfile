FROM windows-jdk:jdk-11.0.13

SHELL ["powershell"]
ARG BASE_URL
ARG SECRET

RUN (New-Object System.Net.WebClient).DownloadFile('{0}/jnlpJars/agent.jar' -f $env:BASE_URL, 'agent.jar') ;
ENTRYPOINT ["java.exe", "-jar", ".\\agent.jar"]