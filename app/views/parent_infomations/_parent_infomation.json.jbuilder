json.extract! parent_infomation, :id, :parent_id, :name, :age, :ic_number, :occupation, :type_id, :created_at, :updated_at
json.url parent_infomation_url(parent_infomation, format: :json)
