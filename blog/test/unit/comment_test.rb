require 'test_helper'

class CommentTest < ActiveSupport::TestCase

should_belong_to :article
should_validate_presence_of :body
en
