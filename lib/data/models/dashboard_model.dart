import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    @JsonKey(name: 'total_customers') required int totalCustomers,
    @JsonKey(name: 'total_categories') required int totalCategories,
    @JsonKey(name: 'total_messages_sent') required int totalMessagesSent,
    @JsonKey(name: 'total_messages_assigned') required int totalMessagesAssigned,
    @JsonKey(name: 'total_message_fail') required int totalMessageFail,
    @JsonKey(name: 'invoice_status') required InvoiceStatus invoiceStatus,
    @JsonKey(name: 'top_customers') required List<TopCustomer> topCustomers,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

@freezed
class InvoiceStatus with _$InvoiceStatus {
  const factory InvoiceStatus({
    @JsonKey(name: 'pending_invoices') required int pendingInvoices,
    @JsonKey(name: 'full_paid_invoices') required int fullPaidInvoices,
    @JsonKey(name: 'partial_paid_invoices') required int partialPaidInvoices,
  }) = _InvoiceStatus;

  factory InvoiceStatus.fromJson(Map<String, dynamic> json) =>
      _$InvoiceStatusFromJson(json);
}

@freezed
class TopCustomer with _$TopCustomer {
  const factory TopCustomer({
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'number_of_loads') required double numberOfLoads,
  }) = _TopCustomer;

  factory TopCustomer.fromJson(Map<String, dynamic> json) =>
      _$TopCustomerFromJson(json);
}
