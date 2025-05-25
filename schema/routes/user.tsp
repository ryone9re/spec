import "@typespec/http";

using Http;

namespace API;

model UserResponse {
  message: string;
}

@route("/users")
@tag("RootService")
interface UserService {
  @get getUser(): UserResponse;
}
