require 'test_helper'

class AnswerTest < ActiveSupport::TestCase

  test "requirement should equal its question's requirement if it doesn't have its own" do
    question = FactoryGirl.create :required_question
    answer = FactoryGirl.create :answer, question: question

    assert_equal answer.requirement, question.requirement
  end

    test "requirement should equal assigned value" do
    answer = FactoryGirl.create :answer_with_requirement

    assert_equal answer.requirement, "pilot_2"
  end

  test "requirement_level should equal assigned value" do
    answer = FactoryGirl.create :answer_with_requirement_as_array
    # what should the array return as?
    assert_equal answer.requirement_level, "pilot, basic"
  end



end




  # test 'statement_text uses existing to_formatted_s' do
  #   assert_equal 'yes, I do', @response1.statement_text
  # end