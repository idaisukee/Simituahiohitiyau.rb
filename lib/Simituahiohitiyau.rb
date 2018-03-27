require 'net/http'
require 'json'

class Simituahiohitiyau
	Prd = ['.emacs.d', 'linux_dotfiles']
	Doc = ['humed', 'blog', 'cbt', 'latin', 'pub', 'weblog']
	Dat = ['medo', 'plane', 'psn', 'sleep', 'timetable', 'timetable2017', 'x40c']
#	@target = '/home/ieremius/'
	Target_root = '/tmp'
	def repos
		url = URI.parse('https://api.github.com/users/idaisukee/repos?per_page=1000')
		Net::HTTP.get(url)
	end

	def repos_simple
		obj = JSON.parse(self::repos)
		obj.map do |i|
			i['name']
		end
	end

	def command
		self.repos_simple.map do |i|
			i
			#'git clone git@github.com:idaisukee/' + i + Simituahiohitiyau::target(i)
		end
	end
	
	def self::target(string)
		Simituahiohitiyau.new.repos_simple.map do |i|
			case i
			when *Simituahiohitiyau::Prd
				File::join(Simituahiohitiyau::Target_root, i)
			when *Simituahiohitiyau::Doc
				File::join(Simituahiohitiyau::Target_root, 'doc', i)
			when *Simituahiohitiyau::Dat
				File::join(Simituahiohitiyau::Target_root, 'dat', i)
			else
				File::join(Simituahiohitiyau::Target_root, 'src', i)
			end
		end
	end
end
p Simituahiohitiyau.new.repos
p Simituahiohitiyau.new.repos_simple
p Simituahiohitiyau.new.command
