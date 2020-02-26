require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  winter = holiday_hash[:winter]
  winter.each do |holiday, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  spring = holiday_supplies[:spring]
  spring[:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |supply|
      winter_supplies << supply
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    if season == :winter
      puts "Winter:"
    elsif season == :fall
      puts "Fall:"
    elsif season == :summer
      puts "Summer:"
    elsif season == :spring
      puts "Spring:"
    end
    holidays.each do |holiday, supplies|
      holiday_string = ""
      if holiday == :christmas
        holiday_string = "  Christmas:"
      elsif holiday == :new_years
        holiday_string = "  New Years:"
      elsif holiday == :fourth_of_july
        holiday_string = "  Fourth Of July:"
      elsif holiday == :thanksgiving
        holiday_string = "  Thanksgiving:"
      elsif holiday == :memorial_day
        holiday_string = "  Memorial Day:"
      end
      i = 0
      while i < supplies.length
        if i != supplies.length - 1
          holiday_string += " #{supplies[i]},"
        else
          holiday_string += " #{supplies[i]}"
        end
        i += 1
      end
      puts holiday_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
