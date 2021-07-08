(module prelude.keybind
        {autoload {a aniseed.core}})

(defn noremap [mode from to]
  (nvim.set_keymap mode from to {:noremap true}))

(defn noremap-cmd [mode from to]
  (nvim.set_keymap mode from (.. ":" to "<cr>") {:noremap true}))

(defn nnoremap [from to]
  (noremap :n from to))

(defn inoremap [from to]
  (noremap :i from to))

(defn vnoremap [from to]
  (noremap :v from to))
