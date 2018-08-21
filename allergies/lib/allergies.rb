class Score
  def allergies(score)
    current_score = score
    allergic_to = []
    allergens = {
      "cats" => 128,
      "pollen" => 64,
      "chocolate" => 32,
      "tomatoes" => 16,
      "strawberries" => 8,
      "shellfish" => 4,
      "peanuts" => 2,
      "eggs" => 1,
    }
    allergens.each do |allergen, allergy_score|
      if current_score >= allergy_score
        current_score -= allergy_score
        allergic_to.push(allergen.to_s)
      end
    end
    allergic_to
  end
end