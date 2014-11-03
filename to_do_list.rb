class ToDoList
  include Enumerable

  attr_accessor :items, :finished_items

  def initialize
  	@items = []
  end

  def each
  	@items.each {|item| yield item}
  end
end
# Go into irb and type: require 'to_do_list.rb' then
# run the following commands one at a time:
# list = ToDoList.new
# list.items = ['laundry', 'dishes', 'vacuum']
# list.items.select {|i| i.length > 6}