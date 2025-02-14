FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /
COPY . ./
RUN dotnet restore
RUN dotnet publish -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /
COPY --from=build /out .
EXPOSE 8080
ENTRYPOINT ["dotnet", "vulnerable-app.dll"]
