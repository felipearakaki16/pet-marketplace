class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :date, :user, :product, :progress,  presence: true
  validates :progress, inclusion: { in: ["Em andamento", "Finalizado"] }

  def in_progress?
    self.progress == "Em andamento"
  end

  def finished!
    self.progress = "Finalizado"
  end
end
