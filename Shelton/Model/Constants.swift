//
//  K.swift
//  Shelton
//
//  Created by Александр Иванов on 31.08.2021.
//

import Foundation

struct K {
    
    static let Items: [Item] = [
        Item(name: "Золотой щит", description: "Выглядит достаточно крепким", isWeapon: false, action: nil),
        Item(name: "Серебряное блюдо", description: "Не блестит, а сверкает", isWeapon: false, action: 67),
        Item(name: "Сушеный краб", description: "Зачем старик-лодочник носил с собой сушеного краба? Может он просто старый безумец", isWeapon: false, action: nil),
        Item(name: "Фигурка дельфина", description: "Довольно изящная работа, может кто-то её потерял?", isWeapon: false, action: 230),
        Item(name: "Фигурка наездника", description: "Он явно должен сидеть на ком-то, но точно не на лошади", isWeapon: false, action: -55),
        Item(name: "Бутылка с посланием", description: "Надеюсь, найдется тот, кому оно предназначено", isWeapon: false, action: nil),
        Item(name: "Золотой перстень", description: "Выглядит солидно, особенно на капитане", isWeapon: false, action: nil),
        Item(name: "Рог рыбы-единорога", description: "Кажется, в него можно протрубить", isWeapon: false, action: -35),
        Item(name: "Амулет", description: "Исчезает после использования", isWeapon: false, action: 15),
        Item(name: "Ржавый меч", description: "По крайней мере, не голыми руками", isWeapon: true, action: 248),
        Item(name: "Рыба-пила", description: "Без понятия, почему её так называют. Может, она действительно умеет пилить?", isWeapon: false, action: nil),
        Item(name: "Рыба-луна", description: "Красивая маленькая рыбка", isWeapon: false, action: nil),
        Item(name: "Перо филина", description: "С виду, перо как перо", isWeapon: false, action: nil),
        Item(name: "Бубенчик", description: "Мило звенит", isWeapon: false, action: 267),
        Item(name: "Обруч с рубином", description: "Сурову моряку врядли стоило его надевать...", isWeapon: false, action: -100),
        Item(name: "Гладкий камешек", description: "В море много гладких камней. Но этот какой-то особенный", isWeapon: false, action: 376),
        Item(name: "Раковина", description: "Просто прекрасная раковина", isWeapon: false, action: 271),
        Item(name: "Клешня краба", description: "Странная вещь... Зачем вообще таскать это с собой?", isWeapon: false, action: -269),
        Item(name: "Трезубец", description: "Вполне пригодно для оружия", isWeapon: true, action: nil),
        Item(name: "Опознавательный знак", description: "Медальон с трезубцем и короной", isWeapon: false, action: nil),
        Item(name: "Бутылка с письмом", description: "Может всё", isWeapon: false, action: nil),
        Item(name: "Золотой пояс", description: "Кажется, в нем не спрятано никакое зло...", isWeapon: false, action: -90),
        Item(name: "Чешуйка морского дракончика", description: "Вдруг пригодится", isWeapon: false, action: -60)
    ]

    struct Skills {
        static let fishLanguage = Skill(name: "Язык рыб", description: "Вы понимаете язык рыб и можете с ними общаться")
    }
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
            NPC(name: "Морской черт", health: 2, attackStrenght: 9),
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
            NPC(name: "Великан", health: 24, attackStrenght: 12),
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
