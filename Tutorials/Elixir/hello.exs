
defmodule DemoModuleLesson1 do 
  def run(str) do
    str = String.reverse(str)
    str = String.upcase(str)
    IO.inspect(str)
  end
end

DemoModuleLesson1.run("Hello world!")
