require "spec_helper"

describe Rocx::Elements::Text do
  include ElementTestMacros

  it_should_use tag: :t, name: "text"

  for_attribute(:space) do
    with_value(nil) do
      it_should_assign_successfully
      it_should_output "<w:t/>"
    end

    with_value(:preserve) do
      it_should_assign_successfully
      it_should_output "<w:t xml:space=\"preserve\"/>"
    end

    with_value(:the_final_frontier) do
      it_should_raise_an_exception
    end
  end

end
