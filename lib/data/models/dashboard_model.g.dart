// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardModelImpl _$$DashboardModelImplFromJson(Map<String, dynamic> json) =>
    _$DashboardModelImpl(
      totalCustomers: (json['total_customers'] as num).toInt(),
      totalCategories: (json['total_categories'] as num).toInt(),
      totalMessagesSent: (json['total_messages_sent'] as num).toInt(),
      totalMessagesAssigned: (json['total_messages_assigned'] as num).toInt(),
      totalMessageFail: (json['total_message_fail'] as num).toInt(),
      invoiceStatus: InvoiceStatus.fromJson(
          json['invoice_status'] as Map<String, dynamic>),
      topCustomers: (json['top_customers'] as List<dynamic>)
          .map((e) => TopCustomer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardModelImplToJson(
        _$DashboardModelImpl instance) =>
    <String, dynamic>{
      'total_customers': instance.totalCustomers,
      'total_categories': instance.totalCategories,
      'total_messages_sent': instance.totalMessagesSent,
      'total_messages_assigned': instance.totalMessagesAssigned,
      'total_message_fail': instance.totalMessageFail,
      'invoice_status': instance.invoiceStatus,
      'top_customers': instance.topCustomers,
    };

_$InvoiceStatusImpl _$$InvoiceStatusImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceStatusImpl(
      pendingInvoices: (json['pending_invoices'] as num).toInt(),
      fullPaidInvoices: (json['full_paid_invoices'] as num).toInt(),
      partialPaidInvoices: (json['partial_paid_invoices'] as num).toInt(),
    );

Map<String, dynamic> _$$InvoiceStatusImplToJson(_$InvoiceStatusImpl instance) =>
    <String, dynamic>{
      'pending_invoices': instance.pendingInvoices,
      'full_paid_invoices': instance.fullPaidInvoices,
      'partial_paid_invoices': instance.partialPaidInvoices,
    };

_$TopCustomerImpl _$$TopCustomerImplFromJson(Map<String, dynamic> json) =>
    _$TopCustomerImpl(
      customerName: json['customer_name'] as String,
      numberOfLoads: (json['number_of_loads'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopCustomerImplToJson(_$TopCustomerImpl instance) =>
    <String, dynamic>{
      'customer_name': instance.customerName,
      'number_of_loads': instance.numberOfLoads,
    };
