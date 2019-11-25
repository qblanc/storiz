class RecordNotEmptyValidator < ActiveModel::Validator
  def validate(record)
    unless non_id_attributes(record).any? { |attr| record.attribute_present?(attr) }
      record.errors.add(record.model_name.human.downcase!, 'must contain at least one attribute')
    end
  end

  private

  def non_id_attributes(record)
    record
      .attribute_names
      .reject! { |attr| attr.include?('_id') }
      .reject! { |attr| attr.include?('_at') }
      .reject! { |attr| attr.match(/\bid\b/) }
  end
end
