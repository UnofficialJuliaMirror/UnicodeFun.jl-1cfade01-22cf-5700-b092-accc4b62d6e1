using UnicodeFun
using Base.Test

# write your own tests here
@test UnicodeFun.to_superscript(-1234567890) == "⁻¹²³⁴⁵⁶⁷⁸⁹⁰"
@test UnicodeFun.to_subscript(-1234567890) == "₋₁₂₃₄₅₆₇₈₉₀"

latexstring = "\\alpha^2 \\cdot \\alpha^{2+3} \\equiv \\alpha^7"
@test to_latex(latexstring) == "α² ⋅ α²⁺³ ≡ α⁷"
latexstring = "\\itA \\in \\bbR^{nxn}, \\bfv \\in \\bbR^n, \\lambda_i \\in \\bbR: \\itA\\bfv = \\lambda_i\\bfv"
@test to_latex(latexstring) == "𝐴 ∈ ℝⁿˣⁿ, 𝐯 ∈ ℝⁿ, λᵢ ∈ ℝ: 𝐴𝐯 = λᵢ𝐯"
latexstring = "\\bf{boldface} \\it{italic} \\bb{blackboard} \\cal{calligraphic} \\frak{fraktur} \\mono{monospace}"
@test to_latex(latexstring) == "𝐛𝐨𝐥𝐝𝐟𝐚𝐜𝐞 𝑖𝑡𝑎𝑙𝑖𝑐 𝕓𝕝𝕒𝕔𝕜𝕓𝕠𝕒𝕣𝕕 𝓬𝓪𝓵𝓵𝓲𝓰𝓻𝓪𝓹𝓱𝓲𝓬 𝔣𝔯𝔞𝔨𝔱𝔲𝔯 𝚖𝚘𝚗𝚘𝚜𝚙𝚊𝚌𝚎"