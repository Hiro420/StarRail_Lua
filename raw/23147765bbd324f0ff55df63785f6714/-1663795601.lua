local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingFailResultDialogBinder"
L2_1 = G
L2_1 = L2_1.MovieRacingSuccessResultDialogBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Maze/MiniGame/MakeFilm/MakeFilmResultFailDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_bind
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
return L0_1
