
use std::io;

fn greet(name: &str) {
    println!("Hello, {}!", name);
}

fn main() {
    println!("Welcome to the greeting program!");

    let mut name = String::new();
    println!("Enter your name:");
    io::stdin().read_line(&mut name).expect("Failed to read line");
    let name = name.trim();

    greet(name);

    println!("Would you like to be greeted again? (yes/no)");
    let mut response = String::new();
    io::stdin().read_line(&mut response).expect("Failed to read line");
    let response = response.trim().to_lowercase();

    if response == "yes" {
        println!("Enter another name:");
        let mut another_name = String::new();
        io::stdin().read_line(&mut another_name).expect("Failed to read line");
        let another_name = another_name.trim();
        greet(another_name);
    } else {
        println!("Goodbye!");
    }
}
