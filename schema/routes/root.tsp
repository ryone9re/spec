import "@typespec/http";

using Http;

@service(#{ title: "Root Service" })
namespace Root;

model RootResponse {
  message: string;
}

@route("/get")
@tag("RootService")
interface RootService {
  @get getRoot(): RootResponse;
}
