using RandomNumbers
using Base.Test: @test

function compare_dirs(dir1::AbstractString, dir2::AbstractString)
    files1 = readdir(dir1)
    files2 = readdir(dir2)
    @test files1 == files2

    for file in files1
        file1 = joinpath(dir1, file)
        file2 = joinpath(dir2, file)
        lines1 = strip_cr.(readlines(file1))
        lines2 = strip_cr.(readlines(file2))
        @test lines1 == lines2
    end
end

strip_cr(line::String) = replace(line, r"\r\n$", "\n")
