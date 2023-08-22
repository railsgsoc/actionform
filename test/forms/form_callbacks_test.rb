require 'test_helper'
require_relative '../fixtures/form_with_callbacks_fixture'

class FormCallbacksTest < ActiveSupport::TestCase
  setup do
    @song = Song.new
    @form = FormWithCallbacksFixture.new(@song)
    @model = @form
  end

  test 'runs before save callback' do
    @form.save
    assert_equal 'before_save title', @form.title
  end

  test 'runs after save callback' do
    @form.save
    assert_equal 'after_save result', @form.result
  end
end
