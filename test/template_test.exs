defmodule TemplateTest do
  use ExUnit.Case
  use QuizBuilders

  test "building compiles the raw template 1 dit" do
    fields = template_fields()
    template = Template.new(fields)

    assert is_nil(Keyword.get(fields, :compiled))
    assert not is_nil(template.compiled)
  end

  test "building compiles the raw template 2 digits" do
    fields = double_digit_addition_template_fields()
    template = Template.new(fields)

    assert is_nil(Keyword.get(fields, :compiled))
    assert not is_nil(template.compiled)
  end
end
