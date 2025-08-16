class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  enum :role, { admin: 0, professor: 1, aluno: 2 }

  has_many :reservations
end