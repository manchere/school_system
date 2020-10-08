# frozen_string_literal: true

class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).all
  end

  def show; end

  def create; end

  def delete; end
end
