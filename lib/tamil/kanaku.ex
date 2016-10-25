defmodule Tamil.Kanaku do

  defmacro kootu(a, b) do
    quote do
      unquote(a) + unquote(b)
    end
  end

  defmacro peruku(a, b) do
    quote do
      unquote(a) * unquote(b)
    end
  end

  defmacro kazhi(a, b) do
    quote do
      unquote(a) - unquote(b)
    end
  end

  defmacro vagu(a, b) do
    quote do
      unquote(a) / unquote(b)
    end
  end

end
