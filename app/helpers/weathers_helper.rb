module WeathersHelper
    def weather_string(val)
        case val
        when 200,201,202,210,211,212,221,230,232
            return "雷雨"
        when 300,301,302,310,311,312,313,314,321
            return "霧雨"
        when 500,501,502,503,504,511,520,521,522,531
            return "雨"
        when 600,601,602,611,613,615,616,620,621,622
            return "雪"
        when 800
            return "晴れ"
        when 801,802
            return "ほぼ晴れ"
        when 803,804
            return "曇り"
        else 
            return "予期せぬ天候"
        end
    end
end
