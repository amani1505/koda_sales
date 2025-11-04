import '../models/customer_model.dart';
import '../models/category_model.dart';
import '../models/message_model.dart';
import '../models/dashboard_model.dart';

class DummyDataService {
  static List<CustomerModel> getDummyCustomers() {
    return [
      CustomerModel(
        id: 1,
        firstName: 'John',
        middleName: 'Michael',
        lastName: 'Doe',
        email: 'john.doe@email.com',
        phoneNumber: '+254712345678',
        customerNo: 'CUST001',
        createdBy: 'admin',
        createdAt: DateTime.now().subtract(const Duration(days: 30)),
        updatedAt: DateTime.now().subtract(const Duration(days: 5)),
        image: null,
      ),
      CustomerModel(
        id: 2,
        firstName: 'Jane',
        middleName: null,
        lastName: 'Smith',
        email: 'jane.smith@email.com',
        phoneNumber: '+254723456789',
        customerNo: 'CUST002',
        createdBy: 'admin',
        createdAt: DateTime.now().subtract(const Duration(days: 25)),
        updatedAt: DateTime.now().subtract(const Duration(days: 3)),
        image: null,
      ),
      CustomerModel(
        id: 3,
        firstName: 'Robert',
        middleName: 'James',
        lastName: 'Johnson',
        email: 'robert.johnson@email.com',
        phoneNumber: '+254734567890',
        customerNo: 'CUST003',
        createdBy: 'admin',
        createdAt: DateTime.now().subtract(const Duration(days: 20)),
        updatedAt: DateTime.now().subtract(const Duration(days: 1)),
        image: null,
      ),
      CustomerModel(
        id: 4,
        firstName: 'Mary',
        middleName: null,
        lastName: 'Williams',
        email: 'mary.williams@email.com',
        phoneNumber: '+254745678901',
        customerNo: 'CUST004',
        createdBy: 'admin',
        createdAt: DateTime.now().subtract(const Duration(days: 15)),
        updatedAt: DateTime.now().subtract(const Duration(hours: 12)),
        image: null,
      ),
      CustomerModel(
        id: 5,
        firstName: 'David',
        middleName: 'Paul',
        lastName: 'Brown',
        email: 'david.brown@email.com',
        phoneNumber: '+254756789012',
        customerNo: 'CUST005',
        createdBy: 'admin',
        createdAt: DateTime.now().subtract(const Duration(days: 10)),
        updatedAt: DateTime.now().subtract(const Duration(hours: 6)),
        image: null,
      ),
    ];
  }

  static CustomerListResponse getDummyCustomerListResponse({
    int page = 1,
    int perPage = 10,
    String? search,
  }) {
    List<CustomerModel> allCustomers = getDummyCustomers();
    
    if (search != null && search.isNotEmpty) {
      allCustomers = allCustomers.where((customer) {
        return customer.firstName.toLowerCase().contains(search.toLowerCase()) ||
               customer.lastName?.toLowerCase().contains(search.toLowerCase()) == true ||
               customer.email?.toLowerCase().contains(search.toLowerCase()) == true ||
               customer.phoneNumber.contains(search);
      }).toList();
    }

    final int startIndex = (page - 1) * perPage;
    final int endIndex = startIndex + perPage;
    final List<CustomerModel> paginatedCustomers = 
        allCustomers.skip(startIndex).take(perPage).toList();

    return CustomerListResponse(
      data: paginatedCustomers,
      total: allCustomers.length,
      currentPage: page,
      lastPage: (allCustomers.length / perPage).ceil(),
    );
  }

  static List<CategoryModel> getDummyCategories() {
    return [
      CategoryModel(
        id: 1,
        idNumber: 101,
        categoryName: 'Premium Customers',
        categoryDescription: 'High-value customers with excellent payment history',
        createdAt: DateTime.now().subtract(const Duration(days: 60)),
        updatedAt: DateTime.now().subtract(const Duration(days: 10)),
      ),
      CategoryModel(
        id: 2,
        idNumber: 102,
        categoryName: 'Regular Customers',
        categoryDescription: 'Standard customers with good payment history',
        createdAt: DateTime.now().subtract(const Duration(days: 45)),
        updatedAt: DateTime.now().subtract(const Duration(days: 8)),
      ),
      CategoryModel(
        id: 3,
        idNumber: 103,
        categoryName: 'New Customers',
        categoryDescription: 'Recently onboarded customers',
        createdAt: DateTime.now().subtract(const Duration(days: 30)),
        updatedAt: DateTime.now().subtract(const Duration(days: 5)),
      ),
      CategoryModel(
        id: 4,
        idNumber: 104,
        categoryName: 'VIP Customers',
        categoryDescription: 'Very important customers with special privileges',
        createdAt: DateTime.now().subtract(const Duration(days: 90)),
        updatedAt: DateTime.now().subtract(const Duration(days: 15)),
      ),
    ];
  }

  static CategoryListResponse getDummyCategoryListResponse() {
    return CategoryListResponse(
      data: getDummyCategories(),
      total: getDummyCategories().length,
    );
  }

  static List<MessageModel> getDummyMessages() {
    return [
      MessageModel(
        id: 1,
        customerNumber: '+254712345678',
        customerName: 'John Doe',
        messageContent: 'Your payment is due tomorrow. Please make payment to avoid service interruption.',
        messageStatus: 'sent',
        customerCategories: 'Premium Customers',
        sentAt: DateTime.now().subtract(const Duration(hours: 2)),
        createdAt: DateTime.now().subtract(const Duration(hours: 3)),
      ),
      MessageModel(
        id: 2,
        customerNumber: '+254723456789',
        customerName: 'Jane Smith',
        messageContent: 'Thank you for your payment. Your service has been renewed.',
        messageStatus: 'delivered',
        customerCategories: 'Regular Customers',
        sentAt: DateTime.now().subtract(const Duration(hours: 5)),
        createdAt: DateTime.now().subtract(const Duration(hours: 6)),
      ),
      MessageModel(
        id: 3,
        customerNumber: '+254734567890',
        customerName: 'Robert Johnson',
        messageContent: 'Welcome to our service! Your account has been activated.',
        messageStatus: 'read',
        customerCategories: 'New Customers',
        sentAt: DateTime.now().subtract(const Duration(hours: 8)),
        createdAt: DateTime.now().subtract(const Duration(hours: 9)),
      ),
      MessageModel(
        id: 4,
        customerNumber: '+254745678901',
        customerName: 'Mary Williams',
        messageContent: 'Your service upgrade has been processed successfully.',
        messageStatus: 'sent',
        customerCategories: 'VIP Customers',
        sentAt: DateTime.now().subtract(const Duration(hours: 12)),
        createdAt: DateTime.now().subtract(const Duration(hours: 13)),
      ),
      MessageModel(
        id: 5,
        customerNumber: '+254756789012',
        customerName: 'David Brown',
        messageContent: 'Reminder: Your monthly service fee is due in 3 days.',
        messageStatus: 'failed',
        customerCategories: 'Regular Customers',
        sentAt: DateTime.now().subtract(const Duration(hours: 24)),
        createdAt: DateTime.now().subtract(const Duration(hours: 25)),
      ),
    ];
  }

  static MessageListResponse getDummyMessageListResponse({
    int page = 1,
    int perPage = 10,
  }) {
    final List<MessageModel> allMessages = getDummyMessages();
    final int startIndex = (page - 1) * perPage;
    final List<MessageModel> paginatedMessages = 
        allMessages.skip(startIndex).take(perPage).toList();

    return MessageListResponse(
      data: paginatedMessages,
      total: allMessages.length,
      currentPage: page,
      lastPage: (allMessages.length / perPage).ceil(),
    );
  }

  static DashboardModel getDummyDashboard() {
    return DashboardModel(
      totalCustomers: 150,
      totalCategories: 4,
      totalMessagesSent: 1250,
      totalMessagesAssigned: 1300,
      totalMessageFail: 45,
      invoiceStatus: const InvoiceStatus(
        pendingInvoices: 25,
        fullPaidInvoices: 95,
        partialPaidInvoices: 15,
      ),
      topCustomers: [
        const TopCustomer(
          customerName: 'John Doe',
          numberOfLoads: 45.5,
        ),
        const TopCustomer(
          customerName: 'Jane Smith',
          numberOfLoads: 38.2,
        ),
        const TopCustomer(
          customerName: 'Robert Johnson',
          numberOfLoads: 32.8,
        ),
        const TopCustomer(
          customerName: 'Mary Williams',
          numberOfLoads: 28.1,
        ),
        const TopCustomer(
          customerName: 'David Brown',
          numberOfLoads: 25.7,
        ),
      ],
    );
  }

  static SendMessageResponse getDummySendMessageResponse() {
    return const SendMessageResponse(
      success: true,
      message: 'Message sent successfully to selected recipients',
      data: {
        'sent_count': 5,
        'failed_count': 0,
        'message_id': 'MSG001',
      },
    );
  }
}