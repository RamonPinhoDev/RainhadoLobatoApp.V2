    using Microsoft.Maui.Authentication;
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.Net.Http;
    using System.Threading.Tasks;

    namespace ScheduleListUI.Services
    {
        public class AuthService : IAuthService
        {
        public AuthService() { }


        public async Task<LoginResponse> AuthenticateWithGoogleAsync()
            { var loginResponse2 = new LoginResponse();
                loginResponse2.AccessToken = "teste";

                try
                {
                    var authUrl = $"{Constants.Google.auth_uri}?response_type=code" +
                                  $"&redirect_uri=com.seuapp://" +
                                  $"&client_id={Constants.Google.client_id}" +
                                  $"&scope=https://www.googleapis.com/auth/userinfo.email" +
                                  $"&include_granted_scopes=true" +
                                  $"&state=state_parameter_passthrough_value";

                    var callbackUrl = "com.seuapp://";

                    var response = await WebAuthenticator.AuthenticateAsync(new WebAuthenticatorOptions
                    {
                        Url = new Uri(authUrl),
                        CallbackUrl = new Uri(callbackUrl)
                    });

                    var codeToken = response.Properties["code"];
                    var parameters = new FormUrlEncodedContent(new[]
                    {
                        new KeyValuePair<string, string>("grant_type", "authorization_code"),
                        new KeyValuePair<string, string>("client_id", Constants.Google.client_id),
                        new KeyValuePair<string, string>("redirect_uri", callbackUrl),
                        new KeyValuePair<string, string>("code", codeToken)
                    });

                    using var client = new HttpClient();
                    var accessTokenResponse = await client.PostAsync(Constants.Google.token_uri, parameters);

                    if (accessTokenResponse.IsSuccessStatusCode)
                    {
                        var data = await accessTokenResponse.Content.ReadAsStringAsync();
                        var loginResponse = JsonConvert.DeserializeObject<LoginResponse>(data);
                        return loginResponse;
                    }

                    return loginResponse2; /*null*/;
                }
                catch (TaskCanceledException)
                {
                    // Usuário cancelou o fluxo
                    return loginResponse2/*null*/;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Erro na autenticação: {ex.Message}");
                    return loginResponse2 /*null*/;
                }
            }

            public async Task<string> teste()
            {
               return  "teste";
            }
        }
    }
