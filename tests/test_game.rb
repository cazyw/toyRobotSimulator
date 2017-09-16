$: << "../lib"
require "game"
require "test/unit"

class TestGame < Test::Unit::TestCase

    def setup
        @game = Game.new
    end

    def test_game_setup
        assert_equal(true, @game.is_a?(Game))
        assert_equal([["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"]], @game.table.print_table)
        assert_equal([-1, -1], @game.robot.robot[:pos])
        assert_equal("", @game.robot.robot[:dir])
        # assert_equal()
    end
    
    def test_robot_position_valid
        @game.position_robot(0, 0)
        assert_equal([["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["O", "x", "x", "x", "x"]], @game.table.print_table)
        assert_equal([0, 0], @game.robot.robot[:pos])
        @game.position_robot(4, 1)
        assert_equal([["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "O"], ["x", "x", "x", "x", "x"]], @game.table.print_table)
        assert_equal([4, 1], @game.robot.robot[:pos])
        @game.position_robot(1, 3)
        assert_equal([["x", "x", "x", "x", "x"], ["x", "O", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"], ["x", "x", "x", "x", "x"]], @game.table.print_table)
        assert_equal([1, 3], @game.robot.robot[:pos])
    end

    def test_robot_direction_valid
        @game.direction_robot("NORTH")
        assert_equal("NORTH", @game.robot.robot[:dir])
        @game.direction_robot("SOUTH")
        assert_equal("SOUTH", @game.robot.robot[:dir])
    end

end