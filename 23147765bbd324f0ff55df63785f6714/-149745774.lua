local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Book.BookRightDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BookRightDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_read
  L4_2 = A0_2._on_btn_read
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unlock
  L4_2 = A0_2._on_btn_unlock
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._book_series = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._book_series = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_name_content
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_count
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_locked
  L4_2 = A1_2.IsAvailable
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._world_img = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_world
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_world_img = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = A0_2._book_series
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = A0_2._book_series
  L3_2 = L3_2.Comments
  L1_2(L2_2, L3_2)
end
L0_1._setup_name_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_count
  L3_2 = A0_2._book_series
  L3_2 = L3_2.CurrentNum
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText_Num
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_count
  L3_2 = A0_2._book_series
  L3_2 = L3_2.TotalNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BookDetailLock"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "BookDetail"
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_locked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Book.BookContentPage"
  L3_2 = A0_2._book_series
  L4_2 = A0_2._world_img
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_read = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_btn_unlock = L1_1
return L0_1
