# frozen_string_literal: true

module Api
  class BreedsController < ApplicationController
    BREEDS = [
      { id: 1, name: "柴犬", origin_country: "日本", size_category: "medium", description: "忠実で勇敢な日本原産の犬種。くるんと巻いた尻尾が特徴。" },
      { id: 2, name: "トイプードル", origin_country: "フランス", size_category: "small", description: "賢くて活発。カットのバリエーションが豊富で人気が高い。" },
      { id: 3, name: "ゴールデンレトリバー", origin_country: "イギリス", size_category: "large", description: "温厚で社交的な大型犬。盲導犬や介助犬としても活躍。" },
      { id: 4, name: "チワワ", origin_country: "メキシコ", size_category: "small", description: "世界最小の犬種。大きな目と耳が愛らしい。" },
      { id: 5, name: "コーギー", origin_country: "イギリス", size_category: "medium", description: "短い脚と長い胴が特徴。もともとは牧羊犬として活躍。" },
    ].freeze

    def index
      render json: BREEDS
    end

    def show
      breed = BREEDS.find { |b| b[:id] == params[:id].to_i }
      if breed
        render json: breed
      else
        render json: { error: "Breed not found" }, status: :not_found
      end
    end
  end
end
