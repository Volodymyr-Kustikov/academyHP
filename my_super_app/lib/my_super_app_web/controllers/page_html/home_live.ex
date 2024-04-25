defmodule MySuperAppWeb.HomeLive do
  use MySuperAppWeb, :surface_live_view

  alias Moon.Design.Button
  def render(assigns) do
    ~F"""
      <Button class="home_button" as="a" href="/components/v2/button">Introduct Tech</Button>
    """
  end
end
