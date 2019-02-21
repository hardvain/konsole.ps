module Button  where
  
import App (Html(..), Component(..))
import DOM.Elements (button)
import DOM.VirtualDOM (text)
import Data.Tuple.Nested ((/\))
import Data.Maybe
import DOM.Attributes 
import Prelude
data Model = Model {
    type:: Maybe String,
    text :: String
}

type Message = Unit

update :: Model -> Message -> Model
update model _ = model

render :: Model -> Html Message
render (Model m) = button [] [text m.text] 

component :: Component Model Message
component = 
    { render: render
    , update: update
    , init: Model { type: Just "primary", text: "Button"}
    }