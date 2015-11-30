class RatingViewObject

  def initialize(park)
    @park = park 
  end

  def display_top_five_comments
    # double negative
    if !(@park.reviews.empty?)
      @park.reviews.last(5).map do |review|
        review.comment
      end
    else
      ["Be the first to rate and review this bathroom!"]
    end
    # good to wrap in array
  end

end