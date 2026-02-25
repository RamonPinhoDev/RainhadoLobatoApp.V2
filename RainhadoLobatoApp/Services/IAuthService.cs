using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScheduleListUI.Services
{
    public interface IAuthService
    {
        public  Task<LoginResponse> AuthenticateWithGoogleAsync();
        public Task<string> teste();

    }
}
