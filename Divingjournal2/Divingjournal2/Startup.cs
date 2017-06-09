using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Divingjournal2.Startup))]
namespace Divingjournal2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
