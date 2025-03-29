// Write a dart code to find friends’ details by their name using a dictionary.
// (Create a local dictionary and search from it using Map & Model Class).

class Friend {
  String name;
  int age;
  String phone;
  String email;

  Friend({required this.name, required this.age, required this.phone, required this.email});

  @override
  String toString() {
    return 'Name: $name, Age: $age, Phone: $phone, Email: $email';
  }
}

void main() {
  // Creating a dictionary (Map) of friends
  Map<String, Friend> friends = {
    "Alice": Friend(name: "Alice", age: 25, phone: "123-456-7890", email: "alice@example.com"),
    "Bob": Friend(name: "Bob", age: 28, phone: "987-654-3210", email: "bob@example.com"),
    "Charlie": Friend(name: "Charlie", age: 22, phone: "555-666-7777", email: "charlie@example.com"),
  };

  // Function to search for a friend by name
  void searchFriend(String name) {
    if (friends.containsKey(name)) {
      print("Friend Found:\n${friends[name]}");
    } else {
      print("Friend not found!");
    }
  }

  // Test the search function
  searchFriend("Alice");  // Existing friend
  searchFriend("David");  // Non-existing friend
}
