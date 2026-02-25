using CommunityToolkit.Mvvm.Input;
using ScheduleListUI.Services;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.ViewModels
{
    public class LoginGoogleViewModel
    {
        private readonly IAuthService _authService;

        public LoginGoogleViewModel(IAuthService authService)
        {
            
            _authService = authService;
        }

        public async Task Login()
        {
            var result = await _authService.teste();
            //if (result != null)
            //{
            //    Console.WriteLine($"Token de acesso: {result.AccessToken}");
            //}
        }

    }
}