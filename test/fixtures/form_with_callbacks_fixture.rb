class FormWithCallbacksFixture < ActionForm::Base
  self.main_model = :song

  attributes :title
  attr_accessor :result

  before_save :set_title
  after_save :set_result

  private

  def set_title
    self.title = 'before_save title'
  end

  def set_result
    self.result = 'after_save result'
  end
end
