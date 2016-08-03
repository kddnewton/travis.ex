defmodule Travis.BuildsTest do
  use ExUnit.Case

  test "#show" do
    %{"commit" => %{"committer_name" => "José Valim"}} = Travis.Builds.show("149411520")
  end
end
