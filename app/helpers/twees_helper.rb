module TweesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_twees_path
    elsif action_name == 'edit'
      twee_path
    end
  end
end
