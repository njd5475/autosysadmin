require 'sinatra'

get '/' do
    "<a href='/cpuinfo'>Server Cpuinfo</a>"
end

get '/cpuinfo' do
  cpuinfo = `cat /proc/cpuinfo` #any command here output captured in cpuinfo
  cpuinfo = cpuinfo.split(/\R/).join("<br/>")
  return cpuinfo
end
