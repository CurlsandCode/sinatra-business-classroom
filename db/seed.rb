# Creates student instances
Student.create({:username=>"username1", :first_name=>"Liping", :last_name=>"Xiao", :nickname=>"Li", :major=>"Accounting", :photo=>"http://imgur.com/jgbL2Sx.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username2", :first_name=>"Sebastian", :last_name=>"Bach", :nickname=>"Basti", :major=>"Economics", :photo=>"http://imgur.com/2KFsJfe.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username3", :first_name=>"Sara", :last_name=>"Carothers", :nickname=>"Beebee", :major=>"Finance", :photo=>"http://i.imgur.com/FXJiQcy.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username4", :first_name=>"Frederick", :last_name=>"Chopin", :nickname=>"Freddy", :major=>"Management", :photo=>"http://i.imgur.com/x1t2grP.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username5", :first_name=>"Antonin", :last_name=>"Dvorac", :nickname=>"Toni", :major=>"Computer Management Information Systems", :photo=>"http://i.imgur.com/NUR4HFK.png", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username6", :first_name=>"Henry", :last_name=>"Purcell", :nickname=>"Ri", :major=>"International Business", :photo=>"http://imgur.com/RZt07dq.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username7", :first_name=>"Claude", :last_name=>"Debussy", :nickname=>"Clau", :major=>"General Business", :photo=>"http://i.imgur.com/z87cszh.jpg", :email=>"email@domain.com", :password=>"password"})
Student.create({:username=>"username8", :first_name=>"Charles", :last_name=>"Dickens", :nickname=>"Charlie", :major=>"Marketing", :photo=>"http://i.imgur.com/9ZCUerO.jpg", :email=>"email@domain.com", :password=>"password"})

# Creates presentation instances
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/gFo6pX-oJ9w", :student_id => 1, :deadline => "2017-07-07"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/B7gyPjAjhys", :student_id => 2, :deadline => "2017-07-08"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/ZfJp1s9i1rE", :student_id => 3, :deadline => "2017-07-09"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/zkhsZpM8jqY", :student_id => 4, :deadline => "2017-07-10"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/9f8dZIQoGvo", :student_id => 5, :deadline => "2017-07-11"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/LTCVDI05ccE", :student_id => 6, :deadline => "2017-07-12"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/CO6RhAMLSWU", :student_id => 7, :deadline => "2017-07-13"})
Presentation.create({:presentation_type => "assignment", :youtube_link => "https://youtu.be/F0GLxF4gXKA", :student_id => 8, :deadline => "2017-07-14"})

