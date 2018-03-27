require 'test/unit'
require File.expand_path('../lib/Otohatiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase

	def test

		assert_equal(Otohatiyau::otohatiyau(500, [7, 5, 3]), [[71, 0, 1], [3, 3, 0]])

		assert_equal(Otohatiyau::inverse_otohatiyau([7, 5, 3], [71, 0, 1], [3, 3, 0]), 500)

		romme = [400, 100, 4]
		
		assert_equal(Otohatiyau::otohatiyau(0, romme), [[0, 0, 0], [0, 0, 0]])
		assert_equal(Otohatiyau::otohatiyau(1, romme), [[0, 0, 0], [1, 1, 1]])
		assert_equal(Otohatiyau::otohatiyau(2, romme), [[0, 0, 0], [2, 2, 2]])
		assert_equal(Otohatiyau::otohatiyau(3, romme), [[0, 0, 0], [3, 3, 3]])
		assert_equal(Otohatiyau::otohatiyau(4, romme), [[0, 0, 1], [4, 4, 0]])
		assert_equal(Otohatiyau::otohatiyau(5, romme), [[0, 0, 1], [5, 5, 1]])
		assert_equal(Otohatiyau::otohatiyau(100, romme), [[0, 1, 0], [100, 0, 0]])
		assert_equal(Otohatiyau::otohatiyau(-1, romme), [[0, 1, 0], [100, 0, 0]])
	end

end
