import "@typespec/http";

using Http;

@service(#{ title: "Root Service" })
namespace Root;

// model Request {}

model Response {
    message: string;
}

@route("/get")
@tag("Root::Service")
interface Service {
    // @get get(req: Request): Response;
    @get get(): Response;
}
