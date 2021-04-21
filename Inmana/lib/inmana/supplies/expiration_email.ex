defmodule Inamana.Supplies.ExpirationEmail do
  import Bamboo.Email

  alias Inmana.Supply

  def create(to_email, supplies) do

    new_email(
      to: to_email,
      from: "app@inmana.com.br",
      subject: "Supplies that are abot to expire",
      text_body: render_email_text(supplies)
    )
  end

  defp render_email_text(supplies) do

    initial_text = "--------------------Supplies that are about to expires-------------------- \n"

    Enum.reduce(supplies, initial_text, fn supply, text -> text <> supply_to_string(supply) end)
  end

  defp supply_to_string(%Supply{
    description: description,
    expiration_date: expiration_date,
    responsible: responsible
  })do

    "
      \n
      - Supply Description: #{description} \n
      - Expiration Date: #{expiration_date} \n
      - Responsible: #{responsible} \n
      \n
      --------------------------------------------------------
    "

  end
end
