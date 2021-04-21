defmodule Inamana.Supplies.ExpirationEmail do
  import Bamboo.Email

  def create(to_email, supplies) do

    new_email(
      to: to_email,
      from: "app@inmana.com.br",
      subject: "Supplies that are abot to expire",
      text_body: render_email_text(supplies)
    )
  end

  def render_email_text(supplies) do

    initial_text = "--------------------Supplies that are about to expires-------------------- \n"

    Enum.reduce(supplies, initial_text, fn supply, text -> text <> supply_string(supply) end)
  end
end
