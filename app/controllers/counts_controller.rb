class CountsController < ApplicationController
  before_action :set_count

  def show
  end

  def update
    @count.increment!(:value)

    respond_to do |format|
      format.turbo_stream  # update.turbo_stream.erb が呼ばれる
      format.html { redirect_to counts_path(@count) }
    end
  end

  private

  def set_count
    @count = Count.first_or_create!(value: 0)
  end
end