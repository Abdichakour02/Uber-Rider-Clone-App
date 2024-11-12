import 'package:flutter/material.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({super.key});

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  // Mock data for the driver's profile. Replace these with actual data.
  String driverName = "ABC";
  String driverPhone = "+91 9489746512";
  String driverEmail = "abc@gmail.com";
  String carModel = "Swift Dzire";
  String carNumber = "MH26BC1900";

  // Edit form controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _carModelController = TextEditingController();
  final TextEditingController _carNumberController = TextEditingController();

  // Method to open the edit form
  void _editProfile() {
    _nameController.text = driverName;
    _phoneController.text = driverPhone;
    _emailController.text = driverEmail;
    _carModelController.text = carModel;
    _carNumberController.text = carNumber;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Edit Profile"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField("Name", _nameController),
                _buildTextField("Phone", _phoneController),
                _buildTextField("Email", _emailController),
                _buildTextField("Car Model", _carModelController),
                _buildTextField("Car Number", _carNumberController),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  // Update the driver details with new values
                  driverName = _nameController.text;
                  driverPhone = _phoneController.text;
                  driverEmail = _emailController.text;
                  carModel = _carModelController.text;
                  carNumber = _carNumberController.text;
                });
                Navigator.pop(context); // Close the dialog
              },
              child: const Text("Save"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog without saving
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  // Helper method to create text input fields
  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Driver Profile"),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editProfile, // Open the edit profile form
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Profile picture placeholder
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Driver Information
            Center(
              child: Text(
                driverName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(
                driverEmail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Profile Details Section
            ProfileDetailRow(
                icon: Icons.phone, title: "Phone", value: driverPhone),
            const Divider(),
            ProfileDetailRow(
                icon: Icons.directions_car,
                title: "Car Model",
                value: carModel),
            const Divider(),
            ProfileDetailRow(
                icon: Icons.drive_eta, title: "Car Number", value: carNumber),
          ],
        ),
      ),
    );
  }
}

// Helper widget for profile details
class ProfileDetailRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ProfileDetailRow({super.key, 
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
