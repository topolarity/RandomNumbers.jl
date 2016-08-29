const TEST_NAME = "PCG_RXS_M_XS_64_64"

include("common.jl")

using RNG.PCG

r = PCGStateSetseq(UInt64, PCG_RXS_M_XS, (0x018cd83e277674ac, 0x436cd6f2434be066))

test_all(r, 100_000_000)
