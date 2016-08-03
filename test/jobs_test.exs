defmodule Travis.JobsTest do
  use ExUnit.Case

  test "#show" do
    %{"commit" => _commit, "job" => %{"build_id" => 149411520}} = Travis.Jobs.show(149411521)
  end
end
