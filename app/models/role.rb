class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  scope :admin, -> {where(name: "admin")}
  scope :buyer, ->{ where(name: "buyer")}
  scope :common, -> {where(name: "common")}
  scope :pro, -> {where(name: "pro")}
end