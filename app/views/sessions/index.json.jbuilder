    if current_user
      @users = current_user.users
      render "index.json.jbuilder"
    else
      render json: []
    end