FactoryBot.define do
  factory :toilet do
    toilet_name { "MyString" }
    multipurpose { false }
    m_urinal { 1 }
    m_room { 1 }
    m_washlet { false }
    w_room { 1 }
    w_washlet { false }
    open_time { "2022-02-01 12:36:53" }
    close_time { "2022-02-01 12:36:53" }
    remark { "MyString" }
    user { nil }
  end
end
