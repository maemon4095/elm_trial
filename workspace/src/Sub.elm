module Sub exposing (..)


type alias Vec2 =
    { x : Float, y : Float }


add : Vec2 -> Vec2 -> Vec2
add l r =
    { x = l.x + r.x, y = l.y + r.y }


dot : Vec2 -> Vec2 -> Float
dot l r =
    l.x * r.x + l.y * r.y


inv : Vec2 -> Vec2
inv v =
    { x = -v.x, y = -v.y }


sub : Vec2 -> Vec2 -> Vec2
sub l r =
    { x = l.x - r.x, y = l.y - r.y }


toJson : Vec2 -> String
toJson v =
    "{ x: " ++ String.fromFloat v.x ++ ", y: " ++ String.fromFloat v.y ++ " }"
