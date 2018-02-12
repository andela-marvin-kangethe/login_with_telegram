require 'test_helper'

class ProgrammingSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programming_skill = programming_skills(:one)
  end

  test "should get index" do
    get programming_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_programming_skill_url
    assert_response :success
  end

  test "should create programming_skill" do
    assert_difference('ProgrammingSkill.count') do
      post programming_skills_url, params: { programming_skill: { level_of_experience: @programming_skill.level_of_experience, name: @programming_skill.name } }
    end

    assert_redirected_to programming_skill_url(ProgrammingSkill.last)
  end

  test "should show programming_skill" do
    get programming_skill_url(@programming_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_programming_skill_url(@programming_skill)
    assert_response :success
  end

  test "should update programming_skill" do
    patch programming_skill_url(@programming_skill), params: { programming_skill: { level_of_experience: @programming_skill.level_of_experience, name: @programming_skill.name } }
    assert_redirected_to programming_skill_url(@programming_skill)
  end

  test "should destroy programming_skill" do
    assert_difference('ProgrammingSkill.count', -1) do
      delete programming_skill_url(@programming_skill)
    end

    assert_redirected_to programming_skills_url
  end
end
