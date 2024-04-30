# Simple Billing System in Python

# Product prices (modify as needed)
prices = {
    "orange": 0.5,
    "apple": 1,
    "grape": 0.5,
    "banana": 0.5
}

def main():
    print("Welcome to our store")
    print("This is our product list:")
    print("Orange: $0.5")
    print("Apple: $1")
    print("Grape: $0.5")
    print("Banana: $0.5")

    customer_name = input("Customer's name: ")
    num_items = int(input("How many different products do you want to buy: "))

    total_cost = 0
    total_items = 0

    print("\nBILL")
    print("{:<10} {:<5} {:<5}".format("Product", "Qty", "Cost"))

    for _ in range(num_items):
        product = input("What do you want to buy: ").lower()
        while product not in prices:
            product = input("Invalid product. Please choose from orange, apple, grape, or banana: ").lower()

        quantity = int(input(f"How many {product} do you want to buy: "))
        cost = prices[product] * quantity

        total_cost += cost
        total_items += quantity

        print("{:<10} {:<5} ${:.2f}".format(product.capitalize(), quantity, cost))

    print("\nTotal: {:<5} ${:.2f}".format(total_items, total_cost))

if __name__ == "__main__":
    main()
