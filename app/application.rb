class Application

  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World"
    num_one = Kernel.rand(1..20)
    num_two = Kernel.rand(1..20)
    num_three = Kernel.rand(1..20)

    resp.write "#{num_one}\n#{num_two}\n#{num_three}\n"

    if num_one == num_two && num_two == num_three
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
