using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ScheduleListUI.Validations
{
    public class Validator : IValidator
    {
        public string NomeErro { get; set; } = "";
        public string EmailErro { get; set; } = "";
        public string SenhaErro { get; set; } = "";

        private const string NomeVazioErroMsg = "Por favor, informe o seu nome.";
        private const string NomeInvalidoErroMsg = "Por favor, informe um nome válido.";
        private const string EmailVazioErroMsg = "Por favor, informe um email.";
        private const string EmailInvalidoErroMsg = "Por favor, informe um email válido.";
        private const string SenhaVazioErroMsg = "Por favor, informe a senha.";
        private const string SenhaInvalidaErroMsg = "A senha deve conter pelo menos 8 caracteres, incluindo letras e números.";

        public Task<bool> Validar(string nome, string email,  string senha)
        {
            var isNomeValido = ValidarNome(nome);
            var isEmailValido = ValidarEmail(email);
            var isSenhaValida = ValidarSenha(senha);

            return Task.FromResult(isNomeValido && isEmailValido &&  isSenhaValida);
        }

        private bool ValidarNome(string nome)
        {
            if (string.IsNullOrEmpty(nome))
            {
                NomeErro = NomeVazioErroMsg;
                return false;
            }

            if (nome.Length < 3)
            {
                NomeErro = NomeInvalidoErroMsg;
                return false;
            }

            NomeErro = "";
            return true;
        }

        private bool ValidarEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
            {
                EmailErro = EmailVazioErroMsg;
                return false;
            }

            if (!Regex.IsMatch(email, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"))
            {
                EmailErro = EmailInvalidoErroMsg;
                return false;
            }

            EmailErro = "";
            return true;
        }

      

        private bool ValidarSenha(string senha)
        {
            if (string.IsNullOrEmpty(senha))
            {
                SenhaErro = SenhaVazioErroMsg;
                return false;
            }

            if (senha.Length < 8 || !Regex.IsMatch(senha, @"[a-zA-Z]") || !Regex.IsMatch(senha, @"\d"))
            {
                SenhaErro = SenhaInvalidaErroMsg;
                return false;
            }

            SenhaErro = "";
            return true;



        }
    }
}
