defmodule Inmana.Supplies.GetByExpirationDate do
  import Ecto.Query

  alias Inmana.Supply

  def call do

    today = Date.utc_today()

    beginning_of_week = Date.beginnig_of_week(today)
  end_of_week = Date.end_of_week(today)

  query =
    from supply in Supply,
      where:
        supply.expiration_date >= ^beginning_of_week and supply.expiration_date <= ^end_of_week,
        preload: [:restaurant]

  end

end
