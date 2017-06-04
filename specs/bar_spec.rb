require("minitest/autorun")
require("minitest/rg")
require_relative("../bar")
require_relative("../guests")
require_relative("../rooms")


class TestBar < Minitest::Test

  def setup
    @bar = Bar.new("Karaoke_Bar")
  end
end