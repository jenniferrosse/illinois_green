require 'test_helper'

class ProjectPartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_partner = project_partners(:one)
  end

  test "should get index" do
    get project_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_project_partner_url
    assert_response :success
  end

  test "should create project_partner" do
    assert_difference('ProjectPartner.count') do
      post project_partners_url, params: { project_partner: { name: @project_partner.name } }
    end

    assert_redirected_to project_partner_url(ProjectPartner.last)
  end

  test "should show project_partner" do
    get project_partner_url(@project_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_partner_url(@project_partner)
    assert_response :success
  end

  test "should update project_partner" do
    patch project_partner_url(@project_partner), params: { project_partner: { name: @project_partner.name } }
    assert_redirected_to project_partner_url(@project_partner)
  end

  test "should destroy project_partner" do
    assert_difference('ProjectPartner.count', -1) do
      delete project_partner_url(@project_partner)
    end

    assert_redirected_to project_partners_url
  end
end
