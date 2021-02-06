FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# copy csproj files
COPY *.csproj ./

# restore nuget packages
RUN dotnet restore

# Copy all files in the solution to builder context
COPY . .
# Publish the web application to ./helloWorld/out folder
RUN dotnet publish -o out ./helloWorld.csproj

# Runtime stage
# start fresh from new image
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime

# Set work directory to /app
WORKDIR /app
# Copy the out folder to the runtime context
COPY --from=builder /app/out .

# Expose 8801 port which webhost listens to
EXPOSE 8801
# Entry point of this image
ENTRYPOINT ["dotnet", "helloWorld.dll"]