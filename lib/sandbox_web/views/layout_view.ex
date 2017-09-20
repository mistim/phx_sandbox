defmodule SandboxWeb.LayoutView do
  use SandboxWeb, :view
  alias Materialize.Component, as: Materialize

  def navbar(conn) do
    Materialize.get_navbar([
      [:options, mobile_collapse: true],
      [:nav, class: "green lighten-2", role: "navigation"],
      [:wrap, [class: "nav-wrapper container"]],
      [:logo, "Matomato Club", class: "brand-logo"],
      [
        :ul,
        [
          [:a, "Статьи", [href: "#1"]],
          [:a, "Видео", [href: "#2"]],
          [:a, "Связь", [href: "#3"]]
        ],
        [id: "id-link"]
      ]
    ])
  end
end
