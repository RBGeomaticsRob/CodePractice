# For this exercise you will be strengthening your page-fu mastery. You will complete the PaginationHelper class, which is a utility class helpful for querying paging information related to an array.

# The class is designed to take in an array of values and an integer indicating how many items will be allowed per each page. The types of values contained within the collection/array are not relevant.


class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @array = collection
    @items_pp = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @array.length
  end

  # returns the number of pages
  def page_count
    (@array.length / @items_pp)+1
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if @array.length > (page_index + 1) * @items_pp
      @items_pp
    elsif @array.length > (page_index) * @items_pp
      @array.length - ((page_index) * @items_pp)
    else
      -1
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
   if item_index > @array.length - 1 || item_index <= 0
    return -1
   else
    item_index / @items_pp
   end
  end
end