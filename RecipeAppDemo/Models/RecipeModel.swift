//
//  RecipeModel.swift
//  RecipeAppDemo
//
//  Created by Brian Ail on 20/01/22.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    
    case doces = "Doces"
    case sopas = "Sopas"
    case saladas = "Saladas"
    case drinks = "Drinks"
    case salgados = "Salgados"
    case snack = "Aperitivos"
    case almoço = "Almoço"
    case jantar = "Jantar"
    case massas = "Massas"
    
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Filé-mignon com creme de espinafre" ,
            image:"https://s2.glbimg.com/qcQsGtz2i_F3bPVYsYTUvQs-RzM=/0x0:2200x1467/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2021/U/9/XzfBWcRNG92vnzARfnBg/file-mignon-e-lombo-suino-com-creme-de-espinafre-shimejis-amanteigados-e-croutons-da-chef-ju-lima-do-mestre-do-sabor.jpg",
            description: "Filé-mignon e lombo suíno ganham vida com creme de espinafre, shimejis e croûtons.",
            ingredients: "500 gramas de filé-mignon, 1 cebola picada em fatias finas, 500 gramas de creme de leite fresco, 250 gramas de lombo suíno picado em cubos pequenos, 300 gramas de espinafre, 300 gramas de shimejis, 50 gramas de manteiga, fio de azeite, 1 colher de sopa de açúcar mascavo, Suco de 1 limão, 1 pão cortado em fatias finas, 100 gramas de manteiga ghee, Sal a gosto, Pimenta a gosto",
            directions: "Tempere o filé-mignon com sal e pimenta-do-reino, Grelhe de ambos os lados em frigideira e finalize no forno por três minutos, Frite os shimejis na manteiga, tempere com sal, pimenta, toque de açúcar mascavo e suco de limão, Em uma panela, adicione fio de azeite para selar as cebolas, Em seguida, coloque creme de leite e deixe reduzir, Sele espinafre em outra panela com manteiga e, em seguida, adicione ao creme, Bata todo o creme com mixer, coe e volte para panela. Termine de temperar, adicione o lombo suíno picado em cubos e sirva",
            category: "Almoço" ,
            datePublished: "19/05/2021" ,
            url:"https://receitas.globo.com/file-mignon-e-lombo-suino-com-creme-de-espinafre-shimejis-amanteigados-e-croutons-da-chef-ju-lima.ghtml"
        ),
        Recipe(
            name: "Bolo de limão com blueberry" ,
            image:"https://s2.glbimg.com/85q42bePC7DMwvHtgUPw7t72UL0=/0x0:3264x2297/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2021/6/0/S7ZEYxRmaRkS9YGdmQOw/bolo-de-limao-com-blueberry1.jpg" ,
            description: "Bolo de limão com blueberry é uma receita que foge do comum. Sobremesa utiliza duas frutas: limão e blueberry, também conhecido como mirtilo, que garante um sabor inusitado mas muito gostoso ao prato, que pode ser uma opção diferente para o café da manhã e lanche da tarde." ,
            ingredients: "1 xícara e meia de farinha de trigo, colher de sopa de fermento, Meia colher de chá de sal, Raspas de limão, 1 xícara de manteiga em temperatura ambiente, 1 xícara de açúcar, 2 ovos em temperatura ambiente, 1 colher de chá de extrato de baunilha, 1 xícara de iogurte natural em temperatura ambiente, 150 gramas de blueberries ou mirtilos congelados, Manteiga para untar a forma, Farinha para untar a forma" ,
            directions: "Preaqueça o forno a 180 graus Celsius, Unte com manteiga e polvilhe com farinha uma forma de bolo com furo no meio. Reserve, Em uma tigela, misture a farinha, o fermento, o sal e as raspas de limão. Reserve, Na batedeira, bata a manteiga com o açúcar até formar um creme fofo, Adicione a baunilha e os ovos e bata novamente até ficar uniforme, Adicione todo o iogurte e continue a bater. Por fim, acrescente a mistura de farinha. Bata o mínimo possível, somente até incorporar, Fora da batedeira, coloque as blueberries ou mirtilos congelados e mexe delicadamente com o auxílio de uma colher ou espátula para distribuir pela massa, Coloque a massa na forma e leve ao forno por 40 minutos." ,
            category: "Doces" ,
            datePublished: "18/05/2021" ,
            url:"https://receitas.globo.com/bolo-de-limao-com-blueberry.ghtml"
        ),
        Recipe(
            name: "Yakisoba de vegetais, frango, carne e camarão" ,
            image:"https://s2.glbimg.com/YBHmg-kGvit8CFSqtmHlWVTRisA=/0x0:3840x2561/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/C/W/sp8AH5Tf2cLJiYA2RRYA/rkb01-prato-referencia-yakisoba-credito-endemolshinebrasil-2021.jpg" ,
            description: "A melhor parte do yakisoba é a variedade de ingredientes que podemos acrescentar! Nessa receita os participantes de Rolling Kitchen preparam um yakisoba de vegetais, frango, carne e camarão, bem temperado e saboroso!" ,
            ingredients: "200 gramas de macarrão para yakisoba, 200 gramas de peito de frango cortado em tiras, 200 gramas de alcatra cortada em tiras, 1 colher de sopa de óleo, 150ml de molho tonkatsu, 20ml de saque culinário, 30ml de shoyu, 1 colher de sopa de óleo de gergelim torrado, 1/2 brócolis em floretes, 5 folhas de acelga cortada em tiras, 1/2 repolho roxo, 1 cebola cortada em tiras, 1 cenoura cortada em tiras, 1 colher de sobremesa de gengibre picado, 1 colher de chá de amido de milho dissolvido em 70ml de água, sal a gosto" ,
            directions: "1. Coloque água em uma panela para ferver com sal. Cozinhe o macarrão por alguns minutos até que estejam macios, mas ainda com resistência na mordida. Escorra e reserve., 2. Em uma wok (ou frigideira grande) coloque o óleo, o gengibre e a cebola. Deixe dourar de leve. Acrescente o frango e a carne. Tempere com sal. Assim que eles mudarem de cor, junte os brócolis e a cenoura. Fique mexendo até que o frango esteja cozido. Acrescente o tonkatsu, o shoyo e o óleo de gergelim. Misture e em seguida o repolho., 3. Junte a acelga e o amido de milho dissolvido na água e deixe levantar fervura. Adicione o macarrão e ajuste o tempero." ,
            category: "Massas" ,
            datePublished: "18/05/2021" ,
            url:"https://receitas.globo.com/yakisoba-de-vegetais-frango-carne-e-camarao-gnt.ghtml"
        ),
        
    ]
}
