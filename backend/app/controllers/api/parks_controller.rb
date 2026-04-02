# frozen_string_literal: true

module Api
  class ParksController < ApplicationController
    PARKS = [
      { id: 1, name: '代々木公園ドッグラン', area: '東京都渋谷区', dog_friendly_rating: 5, has_dog_run: true, note: '広々としたドッグランが人気。週末は混雑。' },
      { id: 2, name: '駒沢オリンピック公園', area: '東京都世田谷区', dog_friendly_rating: 4, has_dog_run: true, note: 'ドッグランあり。ジョギングコースも散歩に最適。' },
      { id: 3, name: '昭和記念公園', area: '東京都立川市', dog_friendly_rating: 5, has_dog_run: true, note: '広大な芝生エリアでのびのび遊べる。入園料あり。' },
      { id: 4, name: '大濠公園', area: '福岡県福岡市', dog_friendly_rating: 4, has_dog_run: false, note: '池の周りの散歩コースが人気。リード必須。' },
      { id: 5, name: '万博記念公園', area: '大阪府吹田市', dog_friendly_rating: 4, has_dog_run: true, note: '自然が豊かでドッグランも完備。太陽の塔が目印。' },
    ].freeze

    def index
      render json: PARKS
    end

    def show
      park = PARKS.find { |p| p[:id] == params[:id].to_i }
      if park
        render json: park
      else
        render json: { error: 'Park not found' }, status: :not_found
      end
    end
  end
end
