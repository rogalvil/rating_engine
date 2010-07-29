module RatingEngine
  class RatingObserver < ActiveRecord::Observer
    
    def before_save(rating)
      rate = ConfigurationHelper.rate_class.find_or_create_by_score(rating.score.to_i)
      rating.rate = rate
    end
    
  end
end