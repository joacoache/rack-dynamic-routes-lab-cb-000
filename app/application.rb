class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.find{|i| i.name == item_name}
        resp.write item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="description" content="Exceptional Realty Group, your real estate agent for buying, selling, and renting throughout New York City">
    <meta name="keywords" content="Exceptional Realty Group, real estate, houses, property">
    <meta name="author" content="Joaquin Herrerar">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
    <title>Exceptional Realty Group - Luxury Homes - About</title>
  </head>
  
  
</html>