# ChatAppMobile

ChatAppMobile is a real-time chat application composed of a cross-platform mobile client built with Xamarin.Forms and a backend Web API powered by ASP.NET Core and SignalR.

## Features

- User registration and JWT-based authentication
- Retrieve friends list
- Public chat and private messaging in real time via SignalR
- Video call signaling between users
- Conversation history persisted with Entity Framework Core and SQL Server
- MVVM architecture in mobile client
- Layered architecture (Controllers → Managers → Repositories → Data Layer) in backend

## Technology Stack

### Mobile (ChatApp.Mobile)

- .NET 8.0 (Android)
- Xamarin.Forms 5.0
- Prism.Unity.Forms for MVVM & DI
- Flurl.Http for REST calls
- Microsoft.AspNetCore.SignalR.Client
- Newtonsoft.Json for JSON serialization

### Backend (ChatApp.WebAPI)

- ASP.NET Core 8.0 Web API
- Entity Framework Core 8.0 (SQL Server LocalDB by default)
- SignalR for real-time messaging
- JWT Bearer Authentication
- Swashbuckle (Swagger) for interactive API docs
- Newtonsoft.Json for JSON serialization

## Repository Structure

```
/ (root of ChatAppMobile)
├── ChatApp.Mobile/            # Xamarin.Forms mobile client solution
│   ├── ChatApp.Mobile.Android/  # Android head project
│   └── ChatApp.Mobile/          # Shared UI, ViewModels, Services, Models
└── ChatApp.WebAPI/            # ASP.NET Core Web API solution
    ├── Controllers/           # REST endpoints
    ├── Hubs/                  # SignalR hubs for real-time comms
    ├── Managers/              # Business logic services
    ├── Repositories/          # Data access implementations
    ├── Models/                # DTOs and entity models
    ├── DL/                    # EF Core DbContext & migrations
    ├── Tools/                 # Utilities (e.g. password hasher)
    └── Program.cs, Startup.cs # Application startup/configuration
```

## Prerequisites

- .NET 8.0 SDK or later
- Visual Studio 2022 (or VS for Mac) with Xamarin tooling
- Android SDK & emulator or physical device
- SQL Server LocalDB (or update connection string in `appsettings.json`)

## Getting Started

### 1. Backend API

1. Open a terminal and navigate to `ChatApp.WebAPI/ChatApp.WebAPI`.
2. Update `appsettings.json` connection string if you have a different SQL Server instance.
3. (Optional) Apply any EF Core migrations:
   ```bash
   dotnet ef database update
   ```
4. Build and run:
   ```bash
   dotnet build
   dotnet run --project ChatApp.WebAPI.csproj
   ```
5. Browse to `https://localhost:5001/swagger` for API documentation.

### 2. Mobile Client

1. Open `ChatApp.Mobile.sln` in Visual Studio.
2. Restore NuGet packages.
3. Set `ChatApp.Mobile.Android` as the startup project.
4. Ensure the API base URL in `SessionService` (or configuration) matches your running backend URL.
5. Deploy to an Android emulator or device.

## Usage

1. Register or insert a new user via the API.
2. Log in from the mobile app to receive a JWT token.
3. Fetch your friends list and start chatting.
4. Send public or private messages. Messages are persisted in the database.
5. Initiate and accept video calls through the app.

