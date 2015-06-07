class Project < ActiveRecord::Base

  #Tasksに紐付け
  has_many :tasks

  # フォームが空だったらエラーになる
  validates :title,
  presence: { message: "入力必須項目です。"},
  length: { minimum: 2, message: "2文字以上で入力してください"}
  
end
