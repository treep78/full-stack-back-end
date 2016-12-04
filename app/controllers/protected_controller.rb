# frozen_string_literal: true
# Inherit from this class to require authenticated access to all actions
class ProtectedController < ApplicationController
  before_action :authenticate
  before_action :set_current_user
end
