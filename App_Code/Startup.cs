using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SqlServerWeb.Startup))]
namespace SqlServerWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
