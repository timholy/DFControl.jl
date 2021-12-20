module Service
using ..DFControl
using Distributed, Pkg, CodeTracking, LoggingExtras, Dates, JLD2, LinearAlgebra
using ..DFControl: config_path
using ..Utils
using ..Calculations
using ..Jobs
using ..FileIO
using ..Servers
# const DAEMON_CONFIG_PATH = config_path("daemon.jld2")
# delete_daemon_config!() = rm(DAEMON_CONFIG_PATH)

const RUNNING_JOBS_FILE = config_path("jobs", "running.txt")
const PENDING_JOBS_FILE = config_path("jobs", "pending.txt")
const SERVICE_LOG = config_path("daemon.log")
const SLEEP_TIME = 10.0

daemon_logger() = FileLogger(SERVICE_LOG; append = false)

server_config() = Server("localhost")

include("running.jl")
include("calculation.jl")
include("pseudos.jl")
include("job.jl")
# include("execs.jl")
# include("fileio.jl")
include("slurm.jl")
include("bash.jl")
end
