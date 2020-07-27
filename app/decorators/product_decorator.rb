class ProductDecorator < Draper::Decorator
  delegate_all

  def as_json(*args)
    {
      id: id,
      name: name,
      description: description,
      price: price,
      make: make
    }
  end
end