gamerule commandBlockOutput false
tellraw @a {"text": "\u00a76\u00a7l【魔法属性】加载成功！","bold": true,"italic": false}

tellraw @a [{"text": "\u00a7a\u00a7l数据包作者: ","italic":false},{"text": "\u00a7b\u00a7l\u00a7n冰河湖人icer","clickEvent":{"action":"open_url","value":"https://space.bilibili.com/2046363420"},"hoverEvent": {"action": "show_text","contents": {"text": "\u00a7f\u00a7l点击以打开作者主页!"}}}]

scoreboard objectives remove temp1
scoreboard objectives add temp1 dummy

function magic_attributes:life_steal/load
function magic_attributes:lightning/load

