module DirectoryHelper

  def grab_linkedin_info(user) 
    if user.linkedin?
      Linkedin::Profile.get_profile(user.linkedin)
    end
  end

  def grab_all_linkedin_info(users)
    users.each do |user|
      if user.linkedin? # && user.linkedin_info.blank?
        user.linkedin_info = grab_linkedin_info(user)
        # user.save
      end
    end
  end

end
