import "@typespec/http";

using Http;

@service(#{ title: "Root Service" })
namespace Root;

model Response {
  message: string;
}

@route("/get")
@tag("Root::Service")
interface Service {
  @get get(): Response;
}
