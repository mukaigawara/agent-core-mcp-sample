# frozen_string_literal: true

module Api
  class DogsController < ApplicationController
    DOGS = [
      { id: 1, name: "コタロウ", breed_id: 1, birthday: "2022-05-10", weight_kg: 9.5, owner_name: "田中太郎" },
      { id: 2, name: "モコ", breed_id: 2, birthday: "2023-01-15", weight_kg: 3.2, owner_name: "鈴木花子" },
      { id: 3, name: "レオ", breed_id: 3, birthday: "2021-08-22", weight_kg: 30.0, owner_name: "佐藤健一" },
      { id: 4, name: "チョコ", breed_id: 4, birthday: "2024-03-01", weight_kg: 1.8, owner_name: "山田美咲" },
      { id: 5, name: "ハナ", breed_id: 5, birthday: "2022-11-30", weight_kg: 11.2, owner_name: "伊藤裕子" },
      { id: 6, name: "マル", breed_id: 1, birthday: "2023-07-07", weight_kg: 8.8, owner_name: "高橋誠" },
    ].freeze

    def index
      render json: DOGS
    end

    def show
      dog = DOGS.find { |d| d[:id] == params[:id].to_i }
      if dog
        render json: dog
      else
        render json: { error: "Dog not found" }, status: :not_found
      end
    end
  end
end
