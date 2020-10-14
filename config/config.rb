class Config
    def self.get(key, ifnil = nil)
        return ENV[key] == nil ? ifnil : ENV[key]
    end


    def self.get_env_path
        return 'etc/environments/env.' + ENV['CURRENT_ENV']
    end
end
