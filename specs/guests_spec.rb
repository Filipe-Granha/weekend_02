require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../rooms")


class TestGuests < Minitest::Test


def setup
@guest = Guests.new("Bob", 20, @song10)
end

def test_guest_has_name
assert_equal("Bob", @guest.name)
end

def test_guest_has_money
assert_equal(20, @guest.money)
end


def test_guest_has_favourite_song
assert_equal(@song10, @guest.favourite_song)
end






end