defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add({a_num, a_den}, {b_num, b_den}) do
    num = a_num*b_den+b_num*a_den
    den = a_den*b_den
    reduce({num, den})
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract({a_num, a_den}, {b_num, b_den}) do
    num = a_num*b_den-b_num*a_den
    den = a_den*b_den
    reduce({num, den})
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply({a_num, a_den}, {b_num, b_den}) do
    reduce({a_num*b_num, a_den*b_den})
  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by({a_num, a_den}, {b_num, b_den}) do
    reduce({a_num*b_den, a_den*b_num})
  end

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs({num, den}) do
    reduce({Kernel.abs(num), Kernel.abs(den)})
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational(_, 0), do: {1, 1}

  def pow_rational({num, den}, n) when n > 0 do
    reduce({num**n, den**n})
  end

  def pow_rational({num, den}, n) when n < 0 do
    n = Kernel.abs(n)
    reduce({den**n, num**n})
  end

  defp root(val, q) do
    val ** (1.0 / q)
  end

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, {num, den}) do
    root(x**num, den)
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce({num, den}) do
    gcd = Integer.gcd(num, den)
    cond do
      den < 0 -> {(-1*num)/gcd, (-1*den)/gcd}
      true -> {num/gcd, den/gcd}
    end
  end
end
