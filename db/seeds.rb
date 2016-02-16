def seed_from_file(klass)
  return unless klass.count == 0

  Rails.logger.info "Creating #{klass}..."

  seed_file = Rails.root.join('db', 'seeds', "#{klass.name.underscore.pluralize}.yml")
  YAML.load_file(seed_file).map do |attrs|
    yield(attrs) if block_given?
    klass.create(attrs)
  end
end

def create_starters
  seed_from_file(Starter)
end

def create_salads
  seed_from_file(Salad)
end

def create_platters
  seed_from_file(Platter)
end

def create_lunch_rolls
  seed_from_file(LunchRoll)
end

def create_signature_rolls
  seed_from_file(SignatureRoll)
end

def create_special_rolls
  seed_from_file(SpecialRoll)
end

def create_sushi
  seed_from_file(Sushi)
end

def create_hh
  seed_from_file(HHItem)
end
# Call the methods above to create our seed data:
ActiveRecord::Base.transaction do
  create_starters
  create_salads
  create_platters
  create_lunch_rolls
  create_signature_rolls
  create_special_rolls
  create_sushi
  create_hh
end
