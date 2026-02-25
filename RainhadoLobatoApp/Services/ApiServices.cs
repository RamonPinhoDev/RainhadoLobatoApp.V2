using Microsoft.Extensions.Logging;
using ScheduleListUI.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;



namespace ScheduleListUI.Services
{
    public class ApiServices
    {

        private readonly HttpClient _httpClient;
         private static string _baseUrl = "https://rainhadolobatoapi.onrender.com/";
        

        private readonly ILogger<ApiServices> _logger;
        JsonSerializerOptions _serializerOptions;

        public ApiServices(HttpClient httpClient, ILogger<ApiServices> logger)
        {
            _httpClient = httpClient;
            _logger = logger;
            _serializerOptions = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            };
        }
        public async Task<ApiResponse<bool>> RegistrarUsuarios(string nome, string email, string password)
        {
            try
            {
                var register = new Register() { Nome = nome, Email = email,  Senha = password };
                var json = JsonSerializer.Serialize(register, _serializerOptions);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await PostRequest("api/Usuarios/Register", content);

                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError($"Erro ao enviar requisição HTTP: {response.StatusCode}");

                    return new ApiResponse<bool> { ErrorMessage = $"Erro ao enviar requisição HTTP: {response.StatusCode}" };
                }

                return new ApiResponse<bool> { Data = true };
            }

            catch (Exception ex)
            {
                _logger.LogError($"Erro ao enviar requisição HTTP: {ex.Message}");
                return new ApiResponse<bool> { ErrorMessage = ex.Message };
            }

        }




        public async Task<ApiResponse<bool>> Login(string email, string password)
        {
            try
            {
                var login = new Login() { UsuarioId = 0,  Email = email, Senha = password };

                var json = JsonSerializer.Serialize(login, _serializerOptions);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await PostRequest("api/Usuarios/Login", content);

                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError($"Erro ao enviar requisição HTTP :{response.StatusCode}");
                    return new ApiResponse<bool> { ErrorMessage = $"Erro ao enviar requisição HTTP :{response.StatusCode}" };
                }
                //Ler o conteúdo da resposta HTTP como uma string de forma assíncrona.
                var jsonResult = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<Token>(jsonResult, _serializerOptions);

                //Armazena dados do token
                Preferences.Set("accesstoken", result.Accesstoken??"");
                Preferences.Set("Usuarioid", (int)result.UsuarioId!);
                Preferences.Set("usuarionome", result.UsuarioNome);
                return new ApiResponse<bool> { Data = true };
            }
            catch (Exception ex)
            {
                _logger.LogError($"Erro no login : {ex.Message}");
                return new ApiResponse<bool> { ErrorMessage = ex.Message };
            }



        }


        public async Task<ApiResponse<bool>> LoginBio(int id)
        {
            try
            {
                var login = new Login() { UsuarioId = id, Email = "Email", Senha = "Senha" };

                var json = JsonSerializer.Serialize(login, _serializerOptions);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await PostRequest("api/Usuarios/LoginBiometria", content);

                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError($"Erro ao enviar requisição HTTP :{response.StatusCode}");
                    return new ApiResponse<bool> { ErrorMessage = $"Erro ao enviar requisição HTTP :{response.StatusCode}" };
                }
                //Ler o conteúdo da resposta HTTP como uma string de forma assíncrona.
                var jsonResult = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<Token>(jsonResult, _serializerOptions);

                //Armazena dados do token
                Preferences.Set("accesstoken", result.Accesstoken ?? "");
                Preferences.Set("Usuarioid", (int)result.UsuarioId!);
                Preferences.Set("usuarionome", result.UsuarioNome);



                return new ApiResponse<bool> { Data = true };
            }
            catch (Exception ex)
            {
                _logger.LogError($"Erro no login : {ex.Message}");
                return new ApiResponse<bool> { ErrorMessage = ex.Message };
            }


        }


        public async Task<ApiResponse<bool>> Comment(Comentario comentario)
        {
            try
            {
               

                var json = JsonSerializer.Serialize(comentario, _serializerOptions);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await PostRequest("api/Comentario", content);

                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError($"Erro ao enviar requisição HTTP :{response.StatusCode}");
                    return new ApiResponse<bool> { ErrorMessage = $"Erro ao enviar requisição HTTP :{response.StatusCode}" };
                }
                //Ler o conteúdo da resposta HTTP como uma string de forma assíncrona.
                var jsonResult = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<Token>(jsonResult, _serializerOptions);

                
                return new ApiResponse<bool> { Data = true };
            }
            catch (Exception ex)
            {
                _logger.LogError($"Erro no login : {ex.Message}");
                return new ApiResponse<bool> { ErrorMessage = ex.Message };
            }

        }

        public async Task<ApiResponse<bool>> Like(Curtida curtida)
        {
            try
            {


                var json = JsonSerializer.Serialize(curtida, _serializerOptions);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await PostRequest("api/Comentario", content);

                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError($"Erro ao enviar requisição HTTP :{response.StatusCode}");
                    return new ApiResponse<bool> { ErrorMessage = $"Erro ao enviar requisição HTTP :{response.StatusCode}" };
                }
                //Ler o conteúdo da resposta HTTP como uma string de forma assíncrona.
                var jsonResult = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<Token>(jsonResult, _serializerOptions);


                return new ApiResponse<bool> { Data = true };
            }
            catch (Exception ex)
            {
                _logger.LogError($"Erro no login : {ex.Message}");
                return new ApiResponse<bool> { ErrorMessage = ex.Message };
            }

        }




        private async Task<HttpResponseMessage> PostRequest(string uri, HttpContent content)
        {
            var enderecoUrl = _baseUrl + uri;
            try
            {
                var result = await _httpClient.PostAsync(enderecoUrl, content);
                return result;
            }
            catch (Exception ex)
            {
                // Log o erro ou trate conforme necessário
                _logger.LogError($"Erro ao enviar requisição POST para {uri}: {ex.Message}");
                return new HttpResponseMessage(HttpStatusCode.BadRequest);
            }
        }


        

        private void AddAuthorizationHeader()
        {
            var token = Preferences.Get("accesstoken", string.Empty);
            if (!string.IsNullOrEmpty(token))
            {
                _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            }
        }

        public async Task<List<MuraldeEventos>> GetMuralAsync()
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + "api/MuraldeEvento");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<MuraldeEventos>>(json);


                    return list;

                }
            }
            return new List<MuraldeEventos>();
        }

        public async Task<List<EventosFotos>> GetEventoFotoAsync(int id)
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + $"api/EventosFoto/{id}");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<EventosFotos>>(json);


                    return list;

                }
            }
            return new List<EventosFotos>();
        }



        public async Task<List<Comentario>> GetCommentAsync(int id)
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + $"api/Comentario?id={id}");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<Comentario>>(json);


                    return list;

                }
            }
            return new List<Comentario>();
        }

        public async Task<int> GetLikeAsync(int id)
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + $"api/Comentario?id={id}");
                if (response.IsSuccessStatusCode)
                {
                    var result = new {count = 0};
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<int>(json);


                    return list;

                }
            }
            return 0;
        }

        public async Task<List<Destaque>> GetDestaquesAsync()
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + "api/Destaque/Get");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<Destaque>>(json);


                    return list;

                }
            }
            return new List<Destaque>();
        }


        public async Task<string> GetDestaquesOkAsync()
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + "api/Destaque/Retorno");
                return "Ok";
            }
            return "No";
        }

        public async Task<List<Recado>> GetRecadoAsync()
        {

            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {

                var response = await _httpClient.GetAsync(_baseUrl + "api/Recado/Get");

                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<Recado>>(json);
                    return list;
                }
                
                
                }
            return new List<Recado>(); // ou lançar uma exceção se quiser

        }


        public async Task<List<ScheduleModel>> GetAgendaAsync()
        {
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + "api/Agenda/Get");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<ScheduleModel>>(json);


                    return list;

                }
            }
            return new List<ScheduleModel>();
        }


        public async Task<List<ProfissionalModel>> GetProfissionaisAsync(int page, string profissionalTipo, string categoria)
        {
            if(page == null) { 
            page = 1;
            }
            var  size =  8;

            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + $"api/Profissional/GetProfissionais?PageNumber={page}&PageSize={size}&CategoriaNome={categoria}&ProfissaoNome={profissionalTipo}"
             );




                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<ProfissionalModel>>(json);


                    return list;

                }

            }
            return new List<ProfissionalModel>();
        }


        public async Task<List<ProfissionalModel>> GetProfissionaisByNameAsync(int page, string profissionalTipo, string categoria, string nome)
        {
            if (page == null)
            {
                page = 1;
            }
            var size = 8;
            NetworkAccess accessType = Connectivity.Current.NetworkAccess;

            if (accessType != NetworkAccess.None)
            {
                var response = await _httpClient.GetAsync(_baseUrl + $"api/Profissional/GetProfissionaisByName?PageNumber={page}&PageSize={size}&CategoriaNome={categoria}&ProfissaoNome={profissionalTipo}&Nome={nome}"
             );




                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var list = JsonSerializer.Deserialize<List<ProfissionalModel>>(json);


                    return list;

                }

            }
            return new List<ProfissionalModel>();
        }





        public async Task<(ImagemPerfil? ImagemPerfil, string? ErrorMessage)> GetImagemPerfilUsuario()
        {
            string endpoint = "api/Usuarios/ImagemPerfilUsuario";
            return await GetAsync<ImagemPerfil>(endpoint);
        }



        private async Task<(T? Data, string? ErrorMessage)> GetAsync<T>(string endpoint)
        {
            try
            {
                AddAuthorizationHeader();

                var response = await _httpClient.GetAsync(AppConfig.BaseUrl + endpoint);

                if (response.IsSuccessStatusCode)
                {
                    var responseString = await response.Content.ReadAsStringAsync();
                    var data = JsonSerializer.Deserialize<T>(responseString, _serializerOptions);
                    return (data ?? Activator.CreateInstance<T>(), null);
                }
                else
                {
                    if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                    {
                        string errorMessage = "Unauthorized";
                        _logger.LogWarning(errorMessage);
                        return (default, errorMessage);
                    }

                    string generalErrorMessage = $"Erro na requisição: {response.ReasonPhrase}";
                    _logger.LogError(generalErrorMessage);
                    return (default, generalErrorMessage);
                }
            }
            catch (HttpRequestException ex)
            {
                string errorMessage = $"Erro de requisição HTTP: {ex.Message}";
                _logger.LogError(ex, errorMessage);
                return (default, errorMessage);
            }
            catch (JsonException ex)
            {
                string errorMessage = $"Erro de desserialização JSON: {ex.Message}";
                _logger.LogError(ex, errorMessage);
                return (default, errorMessage);
            }
            catch (Exception ex)
            {
                string errorMessage = $"Erro inesperado: {ex.Message}";
                _logger.LogError(ex, errorMessage);
                return (default, errorMessage);
            }
        }



        public async Task<ApiResponse<bool>> UplooadimagemUsuario(byte[] imageArray)
        {
            try
            {
                var content = new MultipartFormDataContent();
                content.Add(new ByteArrayContent(imageArray), "imagem", "image.jpg");
                var response = await PostRequest("api/Usuarios/uploadfotousuario", content);
                if (!response.IsSuccessStatusCode) 
                {
                string errrorMensage =  response.StatusCode == HttpStatusCode.Unauthorized? "Unauthorized":$"Erro ao enviar requisição HTTP:{response.StatusCode
                    }";

                    _logger.LogError($"Erro ao enviar requisição HTTP:{response.StatusCode}");
                }
                return new ApiResponse<bool> {Data = true};
            }
            catch (Exception ex) 
            { 
                _logger.LogError($"Erro ao fazer upload da imagem do usuário:{ex.Message}");
                return new ApiResponse<bool> {ErrorMessage = ex.Message};

            }
        }

    }

}
