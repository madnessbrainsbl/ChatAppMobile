using ChatApp.Mobile.Services.Interfaces;
using Microsoft.AspNetCore.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
//using System;
using System.Net.Http;
//using System.Text;
//using System.Threading.Tasks;

class Program
{
    static async Task Main(string[] args)
    {
        using (HttpClient client = new HttpClient())
        {
            // Укажите URL, на который хотите отправить запрос
            string url = "https://10.0.0.2:5001/swagger/index.html";

            // Создайте объект с данными, которые хотите отправить
            var data = new
            {
                Name = "John Doe",
                Age = 30
            };

            // Преобразуйте объект в JSON
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(data);

            // Создайте содержимое запроса
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            // Отправьте POST-запрос
            HttpResponseMessage response = await client.PostAsync(url, content);

            // Проверьте, успешен ли запрос
            if (response.IsSuccessStatusCode)
            {
                string responseBody = await response.Content.ReadAsStringAsync();
                Console.WriteLine("Response: " + responseBody);
            }
            else
            {
                Console.WriteLine("Error: " + response.StatusCode);
            }
        }
    }
}
namespace ChatApp.Mobile.Services.Core
{
    public class ChatService: IChatService
    {
        private readonly HubConnection hubConnection;
        public ChatService()
        {
            hubConnection = new HubConnectionBuilder().WithUrl("http://10.0.2.2:5001").Build();
        }

        public async Task Connect(string userEmail)
        {
            await hubConnection.StartAsync();
            await hubConnection.InvokeAsync("OnConnect", userEmail);
        }

        public async Task Disconnect(string userEmail)
        {
            await hubConnection.InvokeAsync("OnDisconnect", userEmail);
            await hubConnection.StopAsync();

        }

        public async Task SendMessage(string userId, string message, bool isPrivate= false)
        {
            if(isPrivate)
            {
                await hubConnection.InvokeAsync("SendPrivateMessage", userId, message);
            }
            else
            {
                await hubConnection.InvokeAsync("SendMessage", userId, message);
            }
        }

        public void ReceiveMessage(Action<string, string> GetMessageAndUser, bool isPrivate = false)
        {
            if(isPrivate)
            {
                hubConnection.On("ReceivePrivateMessage", GetMessageAndUser);
            }
            else
            {
                hubConnection.On("ReceiveMessage", GetMessageAndUser);
            }
        }

        public async Task CallFriend(string friendEmail)
        {
            await hubConnection.InvokeAsync("CallFriendAsync", friendEmail);
        }

        public void ReceivePrivateVideoCall(Action<string> GetVideoCall)
        {
            hubConnection.On("ReceivePrivateVideoCall", GetVideoCall);
        }

        public async Task RejectVideoCall(string currentUser, string friendUser)
        {
            await hubConnection.InvokeAsync("RejectVideoCall", currentUser, friendUser);
        }

        public async Task AcceptVideoCall(string currentUser, string friendUser)
        {
            await hubConnection.InvokeAsync("AcceptVideoCall", currentUser, friendUser);
        }

        public void AcceptVideoCallByFriend(Action<string, string >VideoCallAcceptedByFriend)
        {
            hubConnection.On("AcceptVideoCallByFriend", VideoCallAcceptedByFriend);

            
        }
    }
}
