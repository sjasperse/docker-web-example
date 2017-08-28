FROM microsoft/dotnet:1.1-sdk

RUN mkdir /app
WORKDIR /app
COPY WebExample ./
RUN dotnet restore && dotnet publish -o out
ENTRYPOINT ["dotnet", "out/WebExample.dll"]