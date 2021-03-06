//
//  K.swift
//  Shelton
//
//  Created by Александр Иванов on 31.08.2021.
//

import Foundation

struct K {
    
    static let Items: [Item] = [
        Item(name: "Золотой щит", action: nil),
        Item(name: "Серебряное блюдо", action: 67),
        Item(name: "Сушеный краб", action: nil),
        Item(name: "Фигурка дельфина", action: 230),
        Item(name: "Фигурка наездника", action: -55),
        Item(name: "Бутылка с посланием", action: nil),
        Item(name: "Золотой перстень", action: 422),
        Item(name: "Рог рыбы-единорога", action: -35),
        Item(name: "Амулет", action: 15),
        Item(name: "Ржавый меч", action: 248),
        Item(name: "Рыба-пила", action: nil),
        Item(name: "Рыба-луна", action: nil),
        Item(name: "Перо филина", action: -38),
        Item(name: "Бубенчик", action: 267),
        Item(name: "Обруч с рубином", action: -100),
        Item(name: "Гладкий камешек", action: 376),
        Item(name: "Раковина", action: 271),
        Item(name: "Клешня краба", action: -269),
        Item(name: "Трезубец", action: nil),
        Item(name: "Опознавательный знак", action: 52),
        Item(name: "Бутылка с письмом", action: nil),
        Item(name: "Золотой пояс", action: -90),
        Item(name: "Чешуйка морского дракончика", action: -60),
        Item(name: "Отличный меч", action: nil),
        Item(name: "Рыба-еж", action: nil),
        Item(name: "Язык рыб", action: 33),
        Item(name: "Призыв грифа", action: 125),
        Item(name: "Вы проплыли через картину с Грифом", action: -50),
        Item(name: "Фигурка дельфина с наездником", action: 532),
        Item(name: "Призыв Рыцаря-Водяного", action: 139),
        Item(name: "Призыв льва", action: -296),
        Item(name: "Кольцо с изображением трезубца", action: nil),
        Item(name: "Вы встретили капитана Шелтона", action: nil),
        Item(name: "Призыв филина", action: 101),
        Item(name: "Призыв грифа и филина", action: 226),
        Item(name: "Рыба-фонарик", action: -200),
        Item(name: "Призыв воина Принца", action: -258),
        Item(name: "Призыв Солнечной рыбки", action: 111),
        Item(name: "Жемчужины", action: -29),
        Item(name: "Помощь Мейстона", action: 88),
        Item(name: "Призыв Рыбы-молот", action: 242),
        Item(name: "Призыв носорога", action: -363),
        Item(name: "Большой алмаз", action: 28),
        Item(name: "Золотой щит", action: nil),
        Item(name: "Рыба-меч", action: nil),
        Item(name: "Призыв моряка", action: 58),
        Item(name: "Вы проплыли через картину с пиратом", action: 86)
    ]
    static let NPCs: [NPC] = [
            NPC(name: "Растение-убийца", health: 2, attackStrenght: 8),
            NPC(name: "Морской дракончик", health: 8, attackStrenght: 9),
            NPC(name: "Пятнистая акула", health: 10, attackStrenght: 10),
            NPC(name: "Рыба-еж", health: 12, attackStrenght: 7),
            NPC(name: "Брызгун", health: 9, attackStrenght: 8),
            NPC(name: "Акула", health: 16, attackStrenght: 10),
            NPC(name: "Первый пират", health: 8, attackStrenght: 10),
            NPC(name: "Второй пират", health: 8, attackStrenght: 9),
            NPC(name: "Третий пират", health: 8, attackStrenght: 10),
            NPC(name: "Капитан", health: 14, attackStrenght: 10),
            NPC(name: "Первый воин", health: 10, attackStrenght: 10),
            NPC(name: "Второй воин", health: 10, attackStrenght: 10),
            NPC(name: "Носорог", health: 8, attackStrenght: 10),
            NPC(name: "Рыцарь-водяной", health: 12, attackStrenght: 9),
            NPC(name: "Кондор", health: 9, attackStrenght: 9),
            NPC(name: "Моряк", health: 12, attackStrenght: 10),
            NPC(name: "Спрут", health: 15, attackStrenght: 11),
            NPC(name: "Старик-лодочник", health: 10, attackStrenght: 6),
            NPC(name: "Гриф", health: 10, attackStrenght: 8),
            NPC(name: "Морской черт", health: 8, attackStrenght: 9),
            NPC(name: "Крылатый лев", health: 8, attackStrenght: 10),
            NPC(name: "Гигантский краб", health: 14, attackStrenght: 9),
            NPC(name: "Морской рыцарь", health: 12, attackStrenght: 11),
            NPC(name: "Рыба хамелеон", health: 10, attackStrenght: 8),
            NPC(name: "Морская змея", health: 11, attackStrenght: 14),
            NPC(name: "Рыба", health: 9, attackStrenght: 8),
            NPC(name: "Воин", health: 14, attackStrenght: 11),
            NPC(name: "Гигантский кальмар", health: 14, attackStrenght: 11),
            NPC(name: "Первый водяной", health: 8, attackStrenght: 8),
            NPC(name: "Второй водяной", health: 9, attackStrenght: 7),
            NPC(name: "Электрический скат", health: 8, attackStrenght: 8),
            NPC(name: "Рыба-ворчун", health: 7, attackStrenght: 6),
            NPC(name: "Великан", health: 12, attackStrenght: 12),
            NPC(name: "Воин Принца", health: 14, attackStrenght: 11),
            NPC(name: "Старший рыцарь-водяной", health: 10, attackStrenght: 9),
            NPC(name: "Первый рыцарь-водяной", health: 8, attackStrenght: 8),
            NPC(name: "Второй рыцарь-водяной", health: 9, attackStrenght: 7),
            NPC(name: "Третий рыцарь-водяной", health: 9, attackStrenght: 7),
            NPC(name: "Дракон", health: 15, attackStrenght: 11),
            NPC(name: "Водяной", health: 10, attackStrenght: 9),
            NPC(name: "Филин", health: 9, attackStrenght: 9),
            NPC(name: "Повар-водяной", health: 8, attackStrenght: 8),
            NPC(name: "Рыба-собака", health: 7, attackStrenght: 8),
            NPC(name: "Морской паук", health: 9, attackStrenght: 9),
            NPC(name: "Рыба-единорог", health: 8, attackStrenght: 10),
            NPC(name: "Дворянин", health: 12, attackStrenght: 10),
            NPC(name: "Рыба-молот", health: 8, attackStrenght: 9),
            NPC(name: "Электрический угорь", health: 9, attackStrenght: 8),
            NPC(name: "Первая пиранья", health: 10, attackStrenght: 10),
            NPC(name: "Вторая пиранья", health: 10, attackStrenght: 10),
            NPC(name: "Морская игла", health: 7, attackStrenght: 8),
            NPC(name: "Первая барракуда", health: 15, attackStrenght: 11),
            NPC(name: "Вторая барракуда", health: 15, attackStrenght: 11),
            NPC(name: "Акула-людоед", health: 11, attackStrenght: 9)
        ]
}
