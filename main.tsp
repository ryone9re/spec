import "@typespec/http";
import "./schema/routes/root.tsp";
import "./schema/routes/user.tsp";

@service(#{ title: "API" })
namespace API;
