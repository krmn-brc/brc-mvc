# Build aşaması
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Proje dosyalarını kopyala
COPY *.csproj ./
RUN dotnet restore

# Diğer tüm dosyaları kopyala ve yayınla
COPY . ./
RUN dotnet publish -c Release -o out

# Runtime aşaması
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out .


# Uygulamayı başlat
ENTRYPOINT ["dotnet", "brc-mvc.dll"]