#!/usr/bin/env ruby

require 'optparse'
require 'ostruct'
require 'iconv'
require 'pp'
require 'logger'
cdir = File.dirname(__FILE__)
require cdir + '/defaultDriver.rb'

module MantisConnector

class CmdLine < OptionParser
    attr_reader :options

    def initialize(args)
        super()
        @options = OpenStruct.new
        @options.url = ''
        @options.user = ''
        @options.password = ''
        @options.level = Logger::INFO
        @options.encoding = 'UTF-8'
        @options.commands = []
		@options.ids = []

        separator ''
        separator 'Options:'

        init
        parse!(args.dup)
        validate
    end

    def init
        on('-s', '--server URL',
                'Issue tracker API') do |s|
            @options.url = s.strip
        end

        on('-u', '--user [USER]',
                'Username') do |user|
            @options.user = user
        end

        on('-p', '--pass[word] [PASSWORD]',
                'Password') do |p|
            @options.password = p
        end

        on('-d', '--debug',
                'Turns on debug mode') do |debug|
            @options.level = Logger::DEBUG
        end

		on('-c', '--command [get]', 'Command to execute') do |c|
			@options.commands << c
		end

		on('--id ID', 'ID of a bug') do |id|
			@options.ids << id
		end

		on('-e', '--encoding ENCODING', 'Encoding to output (default is UTF-8') do |e|
			@options.encoding = e
		end

        # No argument, shows at tail.  This will print an options summary.
        # Try it and see!
        on_tail('-h', '--help', 'Show this message') do
            puts self
            exit
        end

    end  # init()

    def validate
        raise 'Issue tracker URL is not defined!' if @options.url.empty?
    end
end # class CmdLine

class MantisCommandExecutor
	def initialize(owner)
		@owner = owner
		@obj = @owner.obj
	end

	def execute
	end

	def self.name
	end
end # class

class MantisCommandGetHeadline < MantisCommandExecutor
	def execute(ids)
		ids.each do |id|
			issue = @obj.mc_issue_get(@owner.opts.user, @owner.opts.password, id)
			summary = issue.summary if issue
			summary = Iconv.iconv(@owner.opts.encoding, 'UTF-8', summary)[0] if @owner.opts.encoding != 'UTF-8'
			puts summary if summary
		end
	end

	def self.name
		return 'get'
	end
end # class

class Mantis
	attr_reader :obj

	def initialize(cmdLine)
		@opts = cmdLine
		@obj = MantisConnectPortType.new(cmdLine.options.url)
		@obj.wiredump_dev = STDERR if $DEBUG
	end

	def opts
		@opts.options
	end

	def run
		@opts.options.commands.each do |command|
			execute(command, @opts.options.ids)
		end
	end

	def getCommandExecutor(command)
		a = MantisConnector.constants.collect { |k|
			k = MantisConnector.const_get(k)
		}.select { |k|
			k.is_a?(Class) && k.name == command
		}.first
		raise "Executor for command #{command} not found" unless a
		return a.new(self)
	end

	def execute(command, ids)
		comm = getCommandExecutor(command)
		comm.execute(ids) if comm
	end
end # class

if __FILE__ == $0
	cmdLine = CmdLine.new(ARGV)
	mantis = Mantis.new(cmdLine)
	mantis.run
end

end # module

__END__
