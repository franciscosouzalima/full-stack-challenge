class Lend < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :loan_date, :return_date, presence: { message: "Date must be given please" }
  # validates :return_date_after_loan_date
  # validates :max_loan_sixty_days
  
  # def return_date_after_loan_date
  #   if return_date < loan_date
  #     errors.add(:return_date, "Return must be after the loan date")
  #   end
  # end

  # def max_loan_sixty_days
  #   if return_date > loan_date + 60
  #     errors.add(:return_date, "Return must be after the loan date")
  #   end
  # end




end
