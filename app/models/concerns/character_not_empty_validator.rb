class CharacterNotEmptyValidator < ActiveModel::Validator
  def validate(character)
    unless non_id_attributes(character).any? { |attr| character.attribute_present?(attr) }
      character.errors.add(character.model_name.human.downcase!, 'must contain at least one attribute')
    end
  end

  private

  def non_id_attributes(character)
    character
      .attribute_names
      .reject! { |attr| attr.include?('_id') }
      .reject! { |attr| attr.include?('_at') }
      .reject! { |attr| attr.match(/\bid\b/) }
  end
end
