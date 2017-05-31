defmodule RulesOfThumb do

  def unnecessary_argument_rule do
    """
    Even if it seems like you might want it in the future, or if it helps it more
    closely resemble the functions around/related to it, avoid passing unnecessary arguments to
    a function, as it just leads to future confusion about why it is there.

    An exception can be made for a procedure of many base function calls of many modules, where
    stating the same arguments makes for a sane procedure to follow.

    Example

    def procedure(args1, arg2, arg3) do
      with {:ok, value} <- Module1(%{}, arg1, arg2, arg3),
           {:ok, value} <_ Module2(arg1, arg2, arg3) do
      end
    end
    """
  end
end
