import "@typespec/http";

using Http;

namespace API;

@route("/users")
namespace User {
  model UserResponse {
    message: string;
  }

  @route("/")
  @tag("UserService")
  interface UserService {
    @get getUser(): UserResponse;
  }
}
