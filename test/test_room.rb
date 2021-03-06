# Code Generated by ZenTest v. 2.3.0
#                 classname: asrt / meth =  ratio%
#                      Room:    9 /    2 = 450.00%

unless defined? $ZENTEST and $ZENTEST
require 'test/unit'
require 'flexmock'
load 'mockengine.rb'
require 'storage/properties'
require 'core/room'
require 'core/character'
end

class TestRoom < Test::Unit::TestCase
  def setup
    $id = 0
    @r = Room.new("Here",0)
    $r = @r
    @r2 = Room.new("There",0)
    $p = @r2
  end

  def test_arrive
    m = FlexMock.new
    m.mock_handle(:kind) {:arrive}
    m.mock_handle(:from) {1}
    m.mock_handle(:msg) {2}
    assert(!@r.arrive(m))
  end

  def test_describe
    m = FlexMock.new
    m.mock_handle(:kind) {:describe}
    m.mock_handle(:from) {1}
    m.mock_handle(:msg) {2}
    assert(@r.describe(m))
  end

  def test_describe_exits
    m = FlexMock.new
    m.mock_handle(:kind) {:describe_exits}
    m.mock_handle(:from) {1}
    m.mock_handle(:msg) {2}
    assert(@r.describe_exits(m))
  end

  def test_leave
    m = FlexMock.new
    m.mock_handle(:kind) {:leave}
    m.mock_handle(:from) {1}
    m.mock_handle(:msg) {2}
    assert(@r.leave(m))
  end

  def test_exits
    assert_equal({},@r.exits)
  end

  def test_exits_equals
    assert_equal({1,1},@r.exits={1,1})
  end

  def test_log
    assert_respond_to(@r, :log)
  end

end

