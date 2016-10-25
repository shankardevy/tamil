defmodule TamilDemo do
  require Tamil
  require Tamil.Kanaku
  import Tamil
  import Tamil.Kanaku

  seyal eliya_vatti(mudalidu, vatti, kalam) do
    kalavatti = peruku(vatti, kalam)
    kootu(mudalidu, kalavatti)
  end

end
