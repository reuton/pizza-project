
class MenuService {
    
    private var pizzas = [
        Product.init(name: "Сырная", description: "Много сыра!", price: 500, image: "cheese"),
        Product.init(name: "Пеперони", description: "Много перца!", price: 600, image: "pepperoni"),
        Product.init(name: "Куриная", description: "Много курицы!", price: 650, image: "chiken"),
        Product.init(name: "Овощная", description: "Много овощей!", price: 450, image: "vegetable"),
        Product.init(name: "Новая1", description: "Много овощей!", price: 450, image: "vegetable"),
        Product.init(name: "Новая2", description: "Много овощей!", price: 450, image: "vegetable"),
        Product.init(name: "Новая3", description: "Много овощей!", price: 450, image: "vegetable")
    ]
    
    func fetchPizza() -> [Product] {
        return pizzas
    }
}
