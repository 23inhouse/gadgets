module NavigationHelpers
  def id_for(obj)
    obj.id.to_s
  end

  def path_to(page_name)
    case page_name

    when /the add gadget page/
      '/gadgets/new'
    when /the edit gadget page/
      '/gadgets/' + id_for(Gadget.last) + '/edit'
    when /the gadget page/
      '/gadgets/' + id_for(Gadget.last)
    when /the sign in page/
      '/users/sign_in'
    when /the sign up page/
      '/users/sign_up'
    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
