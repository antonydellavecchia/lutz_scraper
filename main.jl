using HTTP, Oscar, JSON

root_url = "https://www3.math.tu-berlin.de/IfM/Nachrufe/Frank_Lutz/stellar/manifolds_lex/manifolds_lex_d2_n8_o0_g1.txt"
dir_url = nothing
page = HTTP.request("GET", root_url)
txt_file = String(page.body)

for surface in eachmatch(r"manifold_lex(\n|.)*?(?=]])]]", txt_file)
  println(surface)
  name, complex = split(surface.match, "=")
  facets = Vector{Vector{Int}}(JSON.parse(String(complex)))
  if isnothing(dir_url)
    println("please set dir_url to a local directory you would like to stroe files to")
  else
    save(dir_url * name, simplicial_complex(facets))
  end
end
