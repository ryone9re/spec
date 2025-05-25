import "@typespec/http";

using Http;

namespace API;

@route("/")
namespace Root {
  model RootResponse {
    message: string;
  }

  @route("/")
  @tag("RootService")
  interface RootService {
    @get getRoot(): RootResponse;
  }
}
