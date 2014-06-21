module Rulers
  class Application
    def get_controller_and_action(env)
      _, cont, action, rest_of_path = env["PATH_INFO"].split("/", 4)
      cont = cont.capitalize
      cont += "Controller"

      [Object.const_get(cont), action]
    end
  end
end
