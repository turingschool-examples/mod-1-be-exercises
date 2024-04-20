class Ints_and_floats
        attr_reader :lucky, :unlucky

        def initialzie(lucky, unlucky)
            @lucky = lucky
            @unlucky = unlucky
        end

        def sum
            @lucky + @unlucky
        end

        def difference
            @lucky - @unlucky
        end

        def quotient
            @unlucky % @lucky
        end

        def remainder
            remainder(@unlucky % @lucky)
        end
end
