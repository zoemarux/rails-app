class ExampleComponentPreview < ViewComponent::Preview
  def with_default_title
    render(ExampleComponent.new(title: "Example component default"))
  end

  def with_long_title
    render(ExampleComponent.new(title: "This is a really long title to see how the component renders this"))
  end

  def with_content_block
    render(ExampleComponent.new(title: "This component accepts a block of content")) do
      tag.div do
        content_tag(:span, "Hello")
      end
    end
  end
end