
Position.create!([
  {id: 1, code: 1, combo_code: "1", parent_id: nil, name: "GMD", mission: ""},
  {id: 2, code: 0, combo_code: "1.0", parent_id: 1, name: "Strategy & Project Management", mission: ""},
  {id: 3, code: 1, combo_code: "1.1", parent_id: 1, name: "Business Development", mission: ""},
  {id: 4, code: 2, combo_code: "1.2", parent_id: 1, name: "Operations", mission: ""},
  {id: 5, code: 3, combo_code: "1.3", parent_id: 1, name: "Quality Assurance", mission: ""},
  {id: 6, code: 4, combo_code: "1.4", parent_id: 1, name: "Safety Management Systems", mission: ""},
  {id: 7, code: 5, combo_code: "1.5", parent_id: 1, name: "Internal Audit", mission: ""},
  {id: 8, code: 6, combo_code: "1.6", parent_id: 1, name: "Risk Management", mission: ""},
  {id: 9, code: 7, combo_code: "1.7", parent_id: 1, name: "Legal & Secretarial Services", mission: ""},
  {id: 10, code: 8, combo_code: "1.8", parent_id: 1, name: "Finance", mission: ""},
  {id: 11, code: 9, combo_code: "1.9", parent_id: 1, name: "People Management & Corporate Services", mission: ""},
  {id: 12, code: 10, combo_code: "1.10", parent_id: 1, name: "Digital", mission: ""},
  {id: 13, code: 1, combo_code: "1.2.1", parent_id: 4, name: "CAMO", mission: ""},
  {id: 14, code: 2, combo_code: "1.2.2", parent_id: 4, name: "AMO", mission: ""},
  {id: 15, code: 3, combo_code: "1.2.3", parent_id: 4, name: "Flight Operations", mission: ""},
  {id: 16, code: 4, combo_code: "1.2.4", parent_id: 4, name: "Airline Operations", mission: ""},
  {id: 17, code: 5, combo_code: "1.2.5", parent_id: 4, name: "Ground Operations", mission: ""},
  {id: 18, code: 6, combo_code: "1.2.6", parent_id: 4, name: "Aviation Security", mission: ""},
  {id: 19, code: 3, combo_code: "1.0.3", parent_id: 2, name: "Pricing", mission: "The Pricing and Performance Dept develops a pricing mechanism for publishing and updating the price and provides ad-hoc pricing to the  Business Development unit. This department also maintains the master list of Aircraft Charter Agreements and provides pricing and renewal  information on request."}
])
Task.create!([
  {id: 4, code: "17000.001", title: "Process Memorandum of Request", security: nil, owner: "1.X", description: "Initiate memorandum of request for in house legal review"},
  {id: 5, code: "10300.001", title: "Develop Pricing Template ", security: nil, owner: "1.0.3", description: "Understand resource requirements for each BU. Receive the resource pricing inputs from various departments and develop a profitable \r\npricing mechanism with thresholds and buffers for use by the Business Development Unit. \r\n"}
])

ActiveStorage::Blob.create!([
  {id: 1, key: "2vpq3qhblmkk5abzo8suwn1ge0i9", filename: "1. 210521 MOR and Clearance Note v2.pdf", content_type: "application/pdf", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 178595, checksum: "ENN+ubOR7fhBuCpZOf2yog=="},
  {id: 2, key: "69975kh5tkej7k6u2mogj9ejy7qr", filename: "Clearance note legal.pdf", content_type: "application/pdf", metadata: {"identified"=>true, "analyzed"=>true}, service_name: "local", byte_size: 656900, checksum: "HzaUx5zTn6+v9ZW90ryiog=="}
])
ActiveStorage::Attachment.create!([
  {id: 1, name: "document", record_type: "Event", record_id: 3, blob_id: 1},
  {id: 2, name: "document", record_type: "Event", record_id: 6, blob_id: 2}
])
ActionText::RichText.create!([
  {id: 9, name: "notes", body: "", record_type: "Task", record_id: 4},
  {id: 10, name: "recommendations", body:"" , record_type: "Task", record_id: 4},
  {id: 11, name: "risks", body: "", record_type: "Task", record_id: 4},
  {id: 12, name: "findings", body:"" , record_type: "Task", record_id: 4},
  {id: 13, name: "notes", body:"" , record_type: "Task", record_id: 5},
  {id: 14, name: "recommendations", body:"" , record_type: "Task", record_id: 5},
  {id: 15, name: "risks", body:"" , record_type: "Task", record_id: 5},
  {id: 16, name: "findings", body:"", record_type: "Task", record_id: 5}
])
Event.create!([
  {id: 1, task_id: 4, code: "17000.001.01", sequence: 1, position_id: nil, owner: "Counter Party", title: "Counter Party Initiates", description: "The counter party contacts the associated HOD regarding contract expiry."},
  {id: 2, task_id: 4, code: "17000.001.01", sequence: 1, position_id: nil, owner: "Timer", title: "Contract Expiry", description: "Contract expiry is noted by the relevant HOD, and self initiated"},
  {id: 3, task_id: 4, code: "17000.001.02", sequence: 2, position_id: nil, owner: "HOD", title: "HOD to fill MOR", description: "HOD to fill Memorandum of Request and submit to Legal"},
  {id: 4, task_id: 4, code: "17000.001.03", sequence: 3, position_id: 9, owner: "", title: "Vet & Discuss", description: "Legal to vet and call for discussion"},
  {id: 5, task_id: 4, code: "17000.001.04", sequence: 4, position_id: 9, owner: "", title: "Approval", description: "Vetting complete and new agreement approved"},
  {id: 6, task_id: 4, code: "17000.001.05", sequence: 5, position_id: 9, owner: "", title: "Issue Clearance Note", description: "Legal will fill and complete the Clearance Note and forward with original contract and MOR set to GMD for execution"},
  {id: 7, task_id: 4, code: "17000.001.06", sequence: 6, position_id: 1, owner: "", title: "Contract Execution", description: "GMD receives and executes contact execution as per legal advise, and returns to contract owner for stamping arrangements"},
  {id: 8, task_id: 4, code: "17000.001.07", sequence: 7, position_id: nil, owner: "HOD", title: "Arrange Stamping", description: "Relevant HOD receives executed contract from GMD, and makes arrangements for stamping with counter party.\r\nOn completion, HOD returns the stamped contract to legal for filing."},
  {id: 9, task_id: 4, code: "17000.001.08", sequence: 8, position_id: 9, owner: "", title: "Filing", description: "Legal receives stamped contract and files appropriately in contract file."},
  {id: 10, task_id: 5, code: "10300.001.01", sequence: 1, position_id: 19, owner: "", title: "Gather Inputs ", description: "Pricing gathers fuel price (finance) and fuel burn rates (operations) "},
  {id: 11, task_id: 5, code: "10300.001.02", sequence: 2, position_id: 19, owner: "", title: "Develop Pricing Table ", description: "Based on experience develop a pricing template that is suitable for use "},
  {id: 12, task_id: 5, code: "10300.001.03", sequence: 3, position_id: 19, owner: "", title: "Publish for use", description: "Pricing publishes the pricing template for use."}
])
