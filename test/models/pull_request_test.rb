# == Schema Information
#
# Table name: pull_requests
#
#  id            :bigint           not null, primary key
#  branch_name   :string
#  name          :string
#  files_changed :text
#  developer_id  :integer          default(0), not null
#  ticket_id     :integer          default(0), not null
#  sub_ticket_id :integer          default(0), not null
#  comment_id    :integer          default(0), not null
#  commmit_id    :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class PullRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
