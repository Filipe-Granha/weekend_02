require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")


class TestSongs < Minitest::Test

  def setup
    @song = Songs.new("Iron Maiden", "Fear of the Dark")
  end




end