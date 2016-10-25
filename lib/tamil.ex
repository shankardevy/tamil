defmodule Tamil do

  # 'seyal' means action in Tamil
  # This is used as an equivalent to Elixir's 'def' that defines functions
  defmacro seyal(call, expr \\ nil) do
    define(:def, call, expr, __CALLER__)
  end

  # The following code are defined as private functions in Elixir language core
  # and hence cannot be directly called without duplication.
  defp define(kind, call, expr, env) do
    assert_module_scope(env, kind, 2)
    assert_no_function_scope(env, kind, 2)
    line = env.line

    {call, uc} = :elixir_quote.escape(call, true)
    {expr, ue} = :elixir_quote.escape(expr, true)

    # Do not check clauses if any expression was unquoted
    check_clauses = not(ue or uc)
    pos = :elixir_locals.cache_env(env)

    quote do
      :elixir_def.store_definition(unquote(line), unquote(kind), unquote(check_clauses),
                                   unquote(call), unquote(expr), unquote(pos))
    end
  end

  defp assert_module_scope(env, fun, arity) do
    case env.module do
      nil -> raise ArgumentError, "cannot invoke #{fun}/#{arity} outside module"
      _   -> :ok
    end
  end

  defp assert_no_function_scope(env, fun, arity) do
    case env.function do
      nil -> :ok
      _   -> raise ArgumentError, "cannot invoke #{fun}/#{arity} inside function/macro"
    end
  end

end
