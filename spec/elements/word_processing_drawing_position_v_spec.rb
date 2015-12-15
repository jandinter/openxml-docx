require "spec_helper"

describe OpenXml::Docx::Elements::WordProcessingDrawingPositionV do
  include ElementTestMacros

  it_should_use tag: :positionV, name: "word_processing_drawing_position_v"

  for_attribute(:relativeFrom) do
    allowed = %i(bottomMargin insideMargin line margin outsideMargin page paragraph topMargin)
    with_values(allowed) do
      it_should_assign_successfully
      it_should_output_regular_xml
    end

    with_value(:notRight) do
      it_should_raise_an_exception
    end
  end


end