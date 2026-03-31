# frozen_string_literal: true

module Api
  class WalkingLogsController < ApplicationController
    WALKING_LOGS = [
      { id: 1, dog_id: 1, started_at: "2026-03-30T07:00:00+09:00", finished_at: "2026-03-30T07:45:00+09:00", distance_km: 2.3, note: "公園で他の柴犬と遊んだ" },
      { id: 2, dog_id: 2, started_at: "2026-03-30T08:30:00+09:00", finished_at: "2026-03-30T09:00:00+09:00", distance_km: 1.1, note: "雨上がりで少し短めに" },
      { id: 3, dog_id: 3, started_at: "2026-03-30T06:00:00+09:00", finished_at: "2026-03-30T07:00:00+09:00", distance_km: 4.5, note: "河川敷をたっぷり走った" },
      { id: 4, dog_id: 1, started_at: "2026-03-30T17:00:00+09:00", finished_at: "2026-03-30T17:30:00+09:00", distance_km: 1.5, note: "夕方の散歩。ご機嫌だった" },
      { id: 5, dog_id: 5, started_at: "2026-03-31T07:15:00+09:00", finished_at: "2026-03-31T08:00:00+09:00", distance_km: 3.0, note: "桜が咲き始めていた" },
      { id: 6, dog_id: 4, started_at: "2026-03-31T10:00:00+09:00", finished_at: "2026-03-31T10:20:00+09:00", distance_km: 0.5, note: "チワワなので短めにお散歩" },
    ].freeze

    def index
      render json: WALKING_LOGS
    end

    def show
      log = WALKING_LOGS.find { |l| l[:id] == params[:id].to_i }
      if log
        render json: log
      else
        render json: { error: "Walking log not found" }, status: :not_found
      end
    end
  end
end
