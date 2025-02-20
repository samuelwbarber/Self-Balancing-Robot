using System;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

class client
{
    private static async Task ConnectToServer(string serverIp, int port) //asynchronous method as this allows it to run in the background (i.e not interupt UI)
    {
        TcpClient client = new TcpClient(); //using the tcpclient class to create a new client
        await client.ConnectAsync(serverIp, port); //await is asynch version of connect
        Console.WriteLine("Connected to the Flamingo!");
        NetworkStream stream = client.GetStream(); //part of the socket class, allows us to send and receive data with streams
        //await Task.WhenAll(sendTask, receiveTask);

        int sampleNumber = 42; //for testing
        var sendTask = Task.Run() => SendData(stream, sampleNumber));//for testing
        var receiveTask = Task.Run() => ReceiveData(stream));//for testing

        await Task.WhenAll(sendTask, receiveTask);//for testing

        client.Close(); //for testing
    }

    private static async Task SendData(NetworkStream stream, int control_code)
    {
        byte[] data = BitConverter.GetBytes(control_code);
        await stream.WriteAsync(data, 0, data.Length);
        Console.WriteLine($"Sent control code: {control_code}");
    }

    private static async Task<int> ReceiveData(NetworkStream stream) //only reads 4 bytes at a time- shouldn't be an issue?
    {
        byte[] data = new byte[4]; //32 bit number code
        await stream.ReadAsync(data, 0, data.Length); //asynch wait for response
        int response_code = BitConverter.ToInt32(data, 0); //converts the byte array to an integer
        Console.WriteLine($"Received data: {response_code}");
        return response_code; // Corrected the return statement with a semicolon
    }

    public static void Main()
    {
        Task.Run() => ConnectToServer("192.168.1.100", 12345)).Wait();
        // Replace "192.168.1.100" with the actual IP 
    }

}
