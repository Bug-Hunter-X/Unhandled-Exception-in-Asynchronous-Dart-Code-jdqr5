```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //Instead of rethrowing, return an error message or default value.
      return {'error': 'Failed to load data: ${response.statusCode}'};
    }
  } catch (e) {
    // Log the error for debugging purposes.
    print('Error fetching data: $e');
    // Return a user-friendly error message or default data.
    return {'error': 'An unexpected error occurred while fetching data.'};
  }
}
```