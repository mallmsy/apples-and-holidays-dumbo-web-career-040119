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
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |seasons, holidays|
      puts "#{seasons.to_s.capitalize!}:"
    holidays.each do |holidays, supplies|
        puts "  #{holidays.to_s.split(/\s |_| \s/).map(&:capitalize!).join(" ")}: #{supplies.join(', ')}"
      end
    end
  end


def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supply|
      if supply.include?("BBQ") == true
          bbq_array << holiday
      end
    end
  end
 bbq_array
end
