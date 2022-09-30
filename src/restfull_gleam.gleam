import gleam/bit_builder
import gleam/http/response
import gleam/http/elli

pub fn my_service(_req) {
  let body = bit_builder.from_string("Hello world")

  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

pub fn main() {
  elli.become(my_service, on_port: 3000)
}
