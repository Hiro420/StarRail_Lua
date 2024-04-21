local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerCommentPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerCommentPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_comment
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2.CommentContent
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.IconPath
  if L3_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_guest_icon
    L6_2 = A1_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A2_2.IconPath
  if L3_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_emoji_icon
    L6_2 = A2_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
